import "package:flutter/material.dart";
import 'package:login_practice/screens/Register.dart';
import 'package:login_practice/screens/Login.dart';
import "package:login_practice/screens/Home.dart";

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
      },
    );
  }
}
