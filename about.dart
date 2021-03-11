import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

// void main() {
//   runApp(VerticalCardPagerUI());
// }

class AboutPage extends StatefulWidget {
  @override
    _State createState() => _State();
}

class _State extends State<AboutPage>{
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Team Rocket",
      "Harsh Vishwkarma",
      "Ankur Gupta",
      "Satya Prakash",
      "Arthav Mathur",
      "teamrocket@gmail.com",
    ];
    final List<Widget> images = [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.red,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.yellow,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.black,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.cyan,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.blue,
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.grey,
      ),
    ];
    return Scaffold(
      appBar: 
      AppBar(title: new Text('About us'),
             backgroundColor: Color.fromRGBO(15, 48, 87, 1),
             ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Card(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {
                    print(page);
                  },
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}