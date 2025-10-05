import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:progressfeed/providers/user_provider.dart';
import 'package:progressfeed/providers/app_state_provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    if (_formKey.currentState?.validate() ?? false) {
      final userProvider = context.read<UserProvider>();
      final appStateProvider = context.read<AppStateProvider>();

      final success = await userProvider.signIn(
        _emailController.text,
        _passwordController.text,
      );

      if (success && mounted) {
        appStateProvider.setLoginStatus(true);
        // Navigate based on user type (for demo, navigate to userNavigation)
        Navigator.pushReplacementNamed(context, 'userNavigation');
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(userProvider.errorMessage ?? 'Login failed'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 9, 36),
      body: Container(
        padding: EdgeInsets.all(12),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                child: Image(
                  image: AssetImage('assets/titleicon1.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                "LogIn",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              TextFormField(
                controller: _emailController,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Colors.white70),
                  fillColor: Color.fromARGB(255, 76, 61, 97),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color: Colors.white70),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Consumer<UserProvider>(
                builder: (context, userProvider, child) {
                  return ElevatedButton(
                    onPressed: userProvider.isLoading ? null : _signIn,
                    child: userProvider.isLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : Text("Login"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signUpUser');
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
