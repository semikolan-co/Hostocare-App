import 'package:Hostocare/main.dart';
import 'package:flutter/material.dart';
import 'hospitalpage.dart';

class GridListExample extends StatelessWidget {
  const GridListExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this would produce 2 rows.
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      // Generate 100 Widgets that display their index in the List
      children: List.generate(4, (index) {
        return Center(
          child: Container(
            child: Column(children: [
                      GestureDetector(
                        onTap: () => hospitalClick(context),
                        child: Image.asset('../images/logo$index.png'),
                      ),
                      Text('Hospital')],
            
            
          ),
          padding: const EdgeInsets.all(16.0),
        ),);
      }),
    );
  }
}
Future hospitalClick(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalPage()));
  }