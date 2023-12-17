import 'package:flutter/material.dart';
import 'Screens/homePage.dart';
import 'Screens/profile.dart';
import 'Screens/signIn.dart';
import 'Screens/logIn.dart';
import 'Screens/firstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeMade Patisserie',
      debugShowCheckedModeBanner: false,
      routes: {
        '/Login': (context) => LogIn(),
        '/Profile': (context) => Profile(),
        '/SignIn': (context) => SignIn(),
        '/HomePage': (context) => HomePage(),
        '/FirstPage': (context) => FirstPage()
      },
      
      initialRoute: '/FirstPage',
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
