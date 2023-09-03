import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Button Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(title: const Text('Button Widget Example'),),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  String dropdownvalue = 'Profile';
      var items = [
        'Profile',
        'Settings',
        'Account',
        'Go Premium',
        'Logout',
      ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
            children: [


              // Flat Button
              TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Flat Button',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),


              TextButton(
                onPressed: (){print("onPressed");},
                child: const Text('Click me '),
              ),


              ElevatedButton(
                  onPressed: (){print("onPressed");},
                  child: const Text('Click me')
              ),


              // Raised Button
              ElevatedButton(
                onPressed: () {},
                // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                style: ElevatedButton.styleFrom(
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text('Elevated Button'),
              ),


              ElevatedButton.icon(
                icon: const Icon(Icons.account_circle),
                onPressed: (){print("onPressed");},
                label: const Text('Click me'),
              ),


              IconButton(
                icon: const Icon(Icons.security),
                onPressed: (){print("onPressed");},
              ),


              FloatingActionButton(
                child: Icon(Icons.person),
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                onPressed: () {},
              ),


              DropdownButton(
                focusColor: Colors.red,
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                    items,
                    style: const TextStyle(
                    color: Colors.green,
                      ),
                     ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                  setState(() {
                  dropdownvalue = newValue!;
                  });
                },
              ),


              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text("Profile"),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text("Account"),
                    value: 2,
                  ),
                  const PopupMenuItem(
                    child: Text("Settings"),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text("About GFG"),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text("Go Premium"),
                    value: 1,
                  ),
                  const PopupMenuItem(
                    child: Text("Logout"),
                    value: 1,
                  ),
                ],
              ),


            ]
        ),
      ),
    );
  }
}