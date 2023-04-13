import "package:flutter/material.dart";
import "package:login_practice/widgets/drawer.dart";

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog App")),
      body: const Material(
        child: Center(child: Text("This is home page")),
      ),
      drawer: const Mydrawer(),
    );
  }
}
