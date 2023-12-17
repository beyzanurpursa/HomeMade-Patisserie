import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              image: NetworkImage("assets/images/10.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.518),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text("Name"),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 230, 231, 0.792),
                        border: Border.all(
                            color: Color.fromARGB(157, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                          hintText: "Please enter your name",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Surname"),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 230, 231, 0.792),
                        border: Border.all(
                            color: Color.fromARGB(157, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                          hintText: "Please enter your surname",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Email"),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 230, 231, 0.792),
                        border: Border.all(
                            color: Color.fromARGB(157, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                          hintText: "example@example.com",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  Text("Username"),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 230, 231, 0.792),
                        border: Border.all(
                            color: Color.fromARGB(157, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                          hintText: "Please enter your username",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password"),
                  Container(
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 230, 231, 0.792),
                        border: Border.all(
                            color: Color.fromARGB(157, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      decoration: InputDecoration(
                        hintText: "Please enter your password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
                        "Sign In",
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
