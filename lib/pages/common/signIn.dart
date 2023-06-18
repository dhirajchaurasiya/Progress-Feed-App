import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 9, 36),
      body: Container(
        padding: EdgeInsets.all(12),
        height: double.infinity,
        width: double.infinity,
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
            TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 76, 61, 97),
                  // filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 1.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red))))),
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
    );
  }
}
