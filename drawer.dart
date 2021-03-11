import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';


class NavDrawerExample extends StatefulWidget {
  NavDrawerExample({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NavDrawerExample>
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
    return Drawer(
      child: FancyDrawerWrapper(
        backgroundColor: Colors.white,
        controller: _controller,
        drawerItems: <Widget>[
          Text(
            "Go to home",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "About us",
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
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                _controller.toggle();
              },
            ),
          ),
          //body: Center(
          //  child: Text("Body"),
          //),
        ),
      ),
    );
}
}
/*class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: new Image.asset('assets/images/logo.png'),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('S'),
          backgroundColor: Colors.red,
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('Profile'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: Text('About us'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: Text('Contact us'),
          onTap: () {},
        ),
        ListTile(
          title: Text('Feedback'),
          onTap: () {},
        ),
      ],
    );
    return Drawer(
          child: drawerItems,
        );
  }
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $id'),
            ),
          );
        });
}*/