import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(title: Text("Demo App"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: onPressed(){

        },
         icon: Icon(icons.home)),
      ],
      ),
    );
  }
}
