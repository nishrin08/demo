import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo App"),
      actions: [
        IconButton(onPressed: onPressed(){

        },
         icon: Icon(icons.home)),
      ],
      ),
    );
  }
}
