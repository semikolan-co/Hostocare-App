import 'package:flutter/material.dart';
import 'package:Hostocare/hospitalpage.dart';
import 'package:Hostocare/login.dart';
import 'package:Hostocare/registration.dart';
import 'package:Hostocare/drawer.dart';

import 'card.dart';
import 'slimycard.dart';
import 'navbar.dart';
void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HOSTOCARE'),
        backgroundColor: Color.fromRGBO(15, 48, 87, 1),
        actions: <Widget>[
          new TextButton(
            onPressed: () {
                navigateToLoginPage(context);
              },
            child: new Text("Login"),
            style: TextButton.styleFrom(
              primary: Colors.white,),),
          new TextButton(
            onPressed: () {
                navigateToRegPage(context);
              }, 
            child: new Text("Register"),
            style: TextButton.styleFrom(
              primary: Colors.white,),
            )
        ],
      ),
      drawer: NavDrawerExample(),
      body: Container(
        child: GridListExample()
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

  Future navigateToLoginPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
  Future navigateToRegPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyRegPage()));
  }

  Future hospitalClick(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalPage()));
  }
  