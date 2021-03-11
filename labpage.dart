import 'package:flutter/material.dart';

class LabPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LabPage> {
  final List<String> names = <String>['AIIMS, All India Institute of Medical Sciences', 'Fortis Hospital, Kolkata', 'Indraprastha Apollo Hospital', 'Lilavati Hospital, Mumba', 'Christian Medical College, Vellore', 'Care Hospital, Banjara', 'Cook', 'Carline'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Labs'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            margin: EdgeInsets.all(2),
            color: msgCount[index]>=10? Colors.blue[400]:
              msgCount[index]>3? Colors.blue[100]: Colors.grey,
            child: Center(
              child: Text('${names[index]} (${msgCount[index]})',
                style: TextStyle(fontSize: 18),
              )
            ),
          );
        }
      )
    );
  }
}