import 'package:flutrer_app/pokemon.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      title: 'Poke App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(text: 'แจ้งเตือนการ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: TextField(
            style: TextStyle(fontSize: 40),
            onChanged: (text) {},
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              hintText: "Please...",
            ),
          controller: _controller,
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyan,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
