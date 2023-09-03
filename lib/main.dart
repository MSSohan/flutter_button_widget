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


              RaisedButton(
                onPressed: (){print("onPressed");},
                child: const Text('Click me'),
                color: Colors.blue,
              ),


              ElevatedButton(
                  onPressed: (){print("onPressed");},
                  child: const Text('Click me')
              ),


              FlatButton(
                onPressed: (){print("onPressed");},
                child: const Text('click me'),
              ),


              TextButton(
                onPressed: (){print("onPressed");},
                child: const Text('Click me '),
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
                onPressed: (){print("onPressed");},
                child: const Text('Click'),
              ),


              DropdownButton(
                focusColor: Colors.green,
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