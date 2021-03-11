import 'package:flutter/material.dart';
import 'package:hostocare/hospitalpage.dart';
import 'package:hostocare/login.dart';
import 'package:hostocare/registration.dart';
//import 'package:hostocare/drawer.dart';
import 'package:hostocare/about.dart';
import 'card.dart';
import 'slimycard.dart';
import 'navbar.dart';
import 'package:fancy_drawer/fancy_drawer.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FancyDrawerWrapper(
        backgroundColor: Colors.white,
        controller: _controller,
        drawerItems: <Widget>[
          TextButton(onPressed: () => wrg(context), 
            child: Text('About Us',
              style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),))//(
            //"Go to home",
            //style: TextStyle(
             // fontSize: 18,
             // color: Colors.purple.shade700,
             // fontWeight: FontWeight.bold,
           // ),
          //)
          ,Text(
            "Contact Us",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Our products",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Support us",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Log out",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
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
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                _controller.toggle();
              },
            ),
          ),
          body: Container(
        child: GridListExample()
      ),
      bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
}
}

/*
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
*/
  Future navigateToLoginPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
  Future navigateToRegPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyRegPage()));
  }

  Future hospitalClick(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalPage()));
  }
  
  Future wrg(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
  }