import 'package:flutter/material.dart';
import 'package:peduly_remake/pages/signup_page.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splashScreen(),
        '/login_page': (context) => loginPage(),
        '/sign-up': (context) => signUp(),
      },
    );
  }
}
