import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 251, 250),
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 255, 251, 250),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Profile');
                },
                child: Row(children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Color.fromARGB(255, 94, 181, 164),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 25, left: 10),
                    child: const Text(
                      "Profile",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ]),
              ),
              Row(children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Icon(
                    Icons.search,
                    size: 40,
                    color: Color.fromARGB(255, 94, 181, 164),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25, left: 10),
                  child: const Text(
                    "Search for Recepie",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
              Row(children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Icon(
                    Icons.description,
                    size: 40,
                    color: Color.fromARGB(255, 94, 181, 164),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25, left: 10),
                  child: const Text(
                    "My Recepies",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
              Row(children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Icon(
                    Icons.trending_up,
                    size: 40,
                    color: Color.fromARGB(255, 94, 181, 164),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25, left: 10),
                  child: const Text(
                    "Trends",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
              Row(children: [
                const Padding(padding: EdgeInsets.all(10)),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Icon(
                    Icons.explore,
                    size: 40,
                    color: Color.fromARGB(255, 94, 181, 164),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25, left: 10),
                  child: const Text(
                    "Explore",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ]),
              const Divider(),
              Expanded(child: Container()),
              InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/FirstPage', (Route<dynamic> route) => false);
                },
                child: Row(children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: const Icon(
                      Icons.logout,
                      size: 40,
                      color: Color.fromARGB(255, 94, 181, 164),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 25, left: 10),
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ]),
              ),
            ],
          )),
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
