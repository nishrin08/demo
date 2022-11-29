// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
                              labelText: "User Name",
                              hintText: "Enter your name"),
                          readOnly: false,
                          enabled: true,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(errorText: "This field is required")

                          ]),
                          ),
                        )
                      ],
                    ))
              ],
            ))));
  }
}
