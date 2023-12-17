import 'package:flutter/material.dart';
import 'package:homemadepatisserie/Screens/homePage.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Column(
              children: [
                Image.network(
                  'assets/images/logo.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'HomeMade Patisserie',
                  style: TextStyle(
                      color: Color.fromARGB(174, 33, 29, 26), fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 235, 255, 252),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 700,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("assets/images/6.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(30),
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 230, 231, 0.792),
                  border:
                      Border.all(color: const Color.fromRGBO(255, 255, 255, 1)),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Username",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Please enter your username",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Password",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Please enter your password",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 192, 236, 230))),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/HomePage',
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 33, 29, 26)),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
