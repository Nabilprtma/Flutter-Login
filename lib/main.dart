import 'dart:html';

import 'package:mmg/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _email = new TextEditingController ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NBL Aplication"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Icon(Icons.rocket_launch, size: 100, color: Colors.blue,),
            ),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 20, right: 20, left: 20),
            
            child :TextFormField(
             controller: _email,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 20, right: 20, left: 20),
            child :TextFormField(
              //controller: _email,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
              ),
            ),
            ),
            
            Padding(padding: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              child: Padding(padding: EdgeInsets.all(20),
              child: Text("login", style: TextStyle(color: Colors.black),),),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Dashboard(
                      email: _email.text,
                    )
                  )
                  );
              },
              
            ))
          ],
        ),
      ),
    );
  }
}