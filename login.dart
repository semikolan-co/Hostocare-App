import 'package:flutter/material.dart';
import 'package:Hostocare/registration.dart';

class SubPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Color.fromRGBO(15, 48, 87, 1),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: new Image.asset('../images/logo.png',
                      width: 150,
                      height: 150,
                      )
                ,),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'HOSTOCARE',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 88, 122,1),
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                    
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Color.fromRGBO(0, 88, 122,1),
                  child: Text('Forgot Password'),
                ),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color.fromRGBO(0, 88, 122,1),
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.pop(context);
                      },
                    )),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Dont have account?'),
                      FlatButton(
                        textColor: Color.fromRGBO(0, 88, 122,1),
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}


/*class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to back to Main Page'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Back to Main Page'),
              onPressed: () {
                backToMainPage(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}*/