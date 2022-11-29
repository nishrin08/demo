import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: const Text("Demo App"),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [const Icon(Icons.search)],
        leading: const Icon(Icons.arrow_back),
        drawer: const Drawer(circleAvatar()),
      ),
    );
  }
}
