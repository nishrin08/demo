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
  List gender = ["Male", "Female", "Others"];
  String? userName;
  String? password;
  String? genderSelected;
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
                            FormBuilderValidators.required(
                                errorText: "This field is required")
                          ]),
                        ),
                        FormBuilderTextField(
                          name: "Password",
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password"),
                          readOnly: false,
                          enabled: true,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: "This field is required")
                          ]),
                        ),
                        FormBuilderDropdown(
                          name: "Gender",
                          items: gender
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList(),
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password"),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: "This field is required")
                          ]),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              userName = formKey
                                  .currentState!.value["User Name"]
                                  .toString();
                              password = formKey.currentState!.value["Password"]
                                  .toString();
                              genderSelected = formKey
                                  .currentState!.value["Gender"]
                                  .toString();
                              print(userName);
                              print(password);
                              print(genderSelected);
                            }
                          },
                        )
                      ],
                    ))
              ],
            ))));
  }
}
