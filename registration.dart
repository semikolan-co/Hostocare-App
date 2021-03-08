import 'package:flutter/material.dart';

class MyRegPage extends StatefulWidget {
  @override
  _MyRegPageState createState() => _MyRegPageState();
}

class _MyRegPageState extends State<MyRegPage> {
  int selectedGender = 0;

  void _handleRadioValueChange1(int value) =>
     setState(() => selectedGender = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          backgroundColor: Color.fromRGBO(15, 48, 87, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            SizedBox(height: 10),
            ClipRRect(
               borderRadius: BorderRadius.circular(100.0),
               child:
                   Image.asset('../images/logo.png', height: 150),
             ),
            Text("New Register",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            Container(
              width: double.maxFinite,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          obscureText: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "First Name",
                            // fillColor: Colors.green
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                          obscureText: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Last Name",
                            // fillColor: Colors.green
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Select Gender",
                style: TextStyle(fontSize: 16.0, color: Colors.black)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  activeColor: Colors.black,
                  value: 0,
                  groupValue: selectedGender,
                  onChanged: _handleRadioValueChange1,
                ),
                Text(
                  'Male',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                Radio(
                  activeColor: Colors.black,
                  value: 1,
                  groupValue: selectedGender,
                  onChanged: _handleRadioValueChange1,
                ),
                Text(
                  'Female',
                  style: new TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300],
              ),
                    // child:Icon(Icons.mail),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email Id",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.vpn_key),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Retype Password",
                    prefixIcon: Icon(Icons.vpn_key),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 250,
              child: RaisedButton(
                color: Color.fromRGBO(0, 88, 122,1),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Register Now",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      );
  }
}