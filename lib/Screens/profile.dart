import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'HomeMade Patisserie',
                  style: TextStyle(
                      color: Color.fromARGB(174, 33, 29, 26), fontSize: 15),
                ),
                Text(
                  "Your Profile",
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 29, 26), fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 255, 251, 250),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('assets/images/avatar.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Beyzanur Pursa',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'beyzanurpursa',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email: beyzanurpursa@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Location: Istanbul',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
