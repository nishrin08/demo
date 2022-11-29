// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Screen"),
        ),
        body: Container(
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(
              children: [
                FormBuilder(
                    key: formKey,
                    child: Column(
                      children: [
                        FormBuilderTextField(
                          name: "User Name",
                          decoration: InputDecoration(
                              hintText: "Enter your name",
                              labelText: "User Name"),
                        )
                      ],
                    ))
              ],
            ))));
  }
}
