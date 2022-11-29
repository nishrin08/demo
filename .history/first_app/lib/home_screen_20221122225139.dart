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
        actions: [const Icon(Icons.search), Icon(Icons.more_vert)],
        //leading: const Icon(Icons.arrow_back),
      ),
      drawer: Drawer(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(children: [
          const SizedBox(height:40;width:20),
          const CircleAvatar(
            radius: 40,
            
          )
        ]),
      ),
    );
  }
}
