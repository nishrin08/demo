// import 'package:first_project/initial_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormBuilderScreen extends StatefulWidget {
  const FormBuilderScreen({super.key});

  @override
  State<FormBuilderScreen> createState() => _FormBuilderScreenState();
}

class _FormBuilderScreenState extends State<FormBuilderScreen> {
  final formKey = GlobalKey<FormBuilderState>();
  List gender = ["Male", "Female", "Others"];
  String? userName;
  String? password;
  String? genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormBuilder(
                  key: formKey,
                  child: Column(children: [
                    FormBuilderTextField(
                      name: "User Name",
                      decoration: const InputDecoration(
                          hintText: "Enter User Name", labelText: "User name"),
                      readOnly: false,
                      enabled: true,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "This field is required")
                      ]),
                      onChanged: (value) {
                        setState(() {
                          userName = value;
                        });
                      },
                    ),
                    FormBuilderTextField(
                      name: "Password",
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      readOnly: false,
                      enabled: true,
                      obscureText: true,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "This field is required")
                      ]),
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    FormBuilderDropdown(
                      name: "Gender",
                      items: gender
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "This field is required")
                      ]),
                      decoration: const InputDecoration(
                          hintText: "Select Gender", labelText: "gender"),
                      onChanged: (newValue) {
                        setState(() {
                          genderSelected = newValue.toString();
                        });
                      },
                    ),
                  ]),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        userName =
                            formKey.currentState!.value["User Name"].toString();
                        password =
                            formKey.currentState!.value["Password"].toString();
                        genderSelected =
                            formKey.currentState!.value["Gender"].toString();
                        print(userName);
                        print(password);
                        print(genderSelected);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                      username: userName!,
                                      password: password!,
                                      gender: genderSelected!,
                                    )));
                        formKey.currentState!.fields['User Name']!.reset();
                        formKey.currentState!.fields['Password']!.reset();
                        formKey.currentState!.fields['Gender']!.reset();
                      } else {
                        print("Error");
                      }
                    },
                    child: Text("Save Data"))
              ],
            ),
          )),
    );
  }
}
