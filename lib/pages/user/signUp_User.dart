import 'package:flutter/material.dart';

class SignUpUser extends StatefulWidget {
  const SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              Expanded(child: Image(image: AssetImage('assets/titleicon1.png')))
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 25, 9, 36),
        body: ListView(
          children: [
            Stack(
              children: [
                Wrap(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.35,
                        top: 0,
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 0,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'signUpContractor');
                            },
                            child: Image(
                              height: MediaQuery.of(context).size.width * 0.20,
                              image: AssetImage('assets/contractor.png'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, 'signUpUser');
                            },
                            child: Image(
                              height: MediaQuery.of(context).size.width * 0.20,
                              image: AssetImage('assets/user.png'),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'signUpSupervisor');
                            },
                            child: Image(
                              height: MediaQuery.of(context).size.width * 0.20,
                              image: AssetImage('assets/supervisor.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0, right: 10, left: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Contractor",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "User",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 227, 231, 13),
                            ),
                          ),
                          Text(
                            "Supervisor",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05,
                        right: 30,
                        left: 30,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            cursorColor: Color.fromARGB(255, 22, 134, 204),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              fillColor: Colors.grey.shade100,
                              hintText: 'Enter Name',
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            cursorColor: Color.fromARGB(255, 22, 134, 204),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              fillColor: Colors.grey.shade100,
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              fillColor: Colors.grey.shade100,
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(70),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 14, 148, 201),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(70),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 14, 148, 201),
                                  ),
                                ),
                                fillColor: Colors.grey.shade100,
                                suffixIcon: Icon(Icons.remove_red_eye),
                                suffixIconColor: Colors.white,
                                hintText: 'Enter Password',
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(70))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 14, 148, 201),
                                ),
                              ),
                              fillColor: Colors.grey.shade100,
                              hintText: 'Confirm Password',
                              suffixIcon: Icon(Icons.remove_red_eye),
                              suffixIconColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.only(
                                      right: 30, left: 30, top: 5, bottom: 5)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'userNavigation');
                            },
                            child: Text(
                              "Sign UP",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Already have an acount?",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
