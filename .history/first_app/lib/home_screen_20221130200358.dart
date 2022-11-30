import 'package:flutter/material.dart';

import 'models/home_model.dart';

// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({super.key});
  Homescreen({this.username,
  required this.password,required this.gender,});
    
  
  @override
  State<homescreen> createState() => _homescreenState();
}

// ignore: camel_case_types
class _homescreenState extends State<homescreen> {
  int index = 0;
  String? userName;
  String? password;
  String? genderSelected;
    HomeModel(
        name: "Asus",
        image: const AssetImage("assets/1.jpeg"),
        icon: const Icon(Icons.share),
        subtitle: "This is Asus"),
    HomeModel(
        name: "Acer",
        image: const AssetImage("assets/2.jpeg"),
        icon: const Icon(Icons.share),
        subtitle: "This is Acer"),
    HomeModel(
        name: "Dell",
        image: const AssetImage("assets/3.jpeg"),
        icon: const Icon(Icons.share),
        subtitle: "This is Dell"),
    HomeModel(
        name: "Hp",
        image: const AssetImage("assets/4.jpeg"),
        icon: const Icon(Icons.share),
        subtitle: "This is Asus"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(
          title: const Text("Demo App"),
          centerTitle: true,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            const Icon(Icons.more_vert)
          ],
          //leading: const Icon(Icons.arrow_back),
        ),
        // ignore: prefer_const_constructors
        drawer: Drawer(
          backgroundColor: Colors.deepPurple,

          // ignore: prefer_const_literals_to_create_immutables
          child: Column(children: [
            // ignore: prefer_const_constructors
            SizedBox(height: 50.0, width: 50.0),

            const CircleAvatar(
              backgroundImage: AssetImage("asstes/2.jpg"),
              radius: 50,
            ),
            const SizedBox(height: 20.0, width: 20.0),
            const Text(
              "Thasleema",
              style: TextStyle(color: Colors.white),
            ),
            const Divider(
              thickness: 2,
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),

            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Social"),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            const Divider(
              thickness: 2,
            ),
            ElevatedButton(
              onPressed: () {
                print("signout clicked");
              },
              child: const Text("SignOut"),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
              print(index);
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: "Profile",
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: laptop.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200,
                    child: GridTile(
                        child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: laptop[index].image,
                          radius: 30,
                        ),
                        Text(laptop[index].name),
                        Text(laptop[index].subtitle),
                        laptop[index].icon,
                      ],
                    )),
                  );
                },
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: laptop.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: laptop[i].image,
                  ),
                  title: Text(laptop[i].name),
                  subtitle: Text(laptop[i].subtitle),
                  trailing: laptop[i].icon,
                );
              },
            ))
          ],
        ));
  }
}
