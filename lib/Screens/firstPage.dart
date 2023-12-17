import 'dart:ui';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 750,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage("assets/images/7.jpg"),
              fit: BoxFit.cover,
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(211, 242, 238, 1)),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 33, 29, 26))),
                    onPressed: () => Navigator.pushNamed(context, '/Login'),
                    child: Container(
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20, top: 5, bottom: 5),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(211, 242, 238, 1)),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 33, 29, 26))),
                    onPressed: () => Navigator.pushNamed(context, '/SignIn'),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 15.0, left: 15, top: 5, bottom: 5),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
