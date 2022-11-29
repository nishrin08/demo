import 'package:flutter/material.dart';

// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  // ignore: non_constant_identifier_names
  List<HomeModel> Laptop = [HomeModel(name:"Asus",image:AssetImage("assets/1.jpg"),icon:Icon(Icons.share),subTite:"This is Asus"),
  HomeModel(name:"Dell",image:AssetImage("assets/2.jpg"),icon:Icon(Icons.share),subTite:"This is Dell"),HomeModel(name:"Hp",image:AssetImage("assets/3.jpg"),icon:Icon(Icons.share),subTite:"This is Hp"),
  HomeModel(name:"Acer",image:AssetImage("assets/4.jpg"),icon:Icon(Icons.share),subTite:"This is Acer"),
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
              backgroundColor: Colors.white,
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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: Laptop.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: Laptop[index].image
                    ),
                    title: Text(Laptop[index].title),
                    subtitle: Text(Laptop[index].subTitle),
                    trailing: Laptop[index].icon,
                  );
                },
              ))
            ],
          ),
        ));
  }
}
