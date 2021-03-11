import 'package:flutter/material.dart';
import 'hospitalpage.dart';
import 'clinicpage.dart';
import 'pharmacypage.dart';
import 'labpage.dart';

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
                        onTap: () => logoClick(context,index),
                        
                        child: Image.asset('assets/images/logo$index.png',
                          height: 125,
                          width: 125,
                          scale: 1,),
                      ),
                      Text(getText(index))],
            
            
          ),
          padding: const EdgeInsets.all(16.0),
        ),);
      }),
    );
  }

  String getText(int index) {
  if (index==0){
    return 'Hospital';
  } 
  if (index==1){
    return 'Clinic';
  } 
  if (index==2){
    return 'Pharmacy';
  } 
  else{
    return 'Labs';
  } 
  }

  logoClick(BuildContext context, int index) {
   if (index==0){
    hospitalClick(context);
  } 
  if (index==1){
    clinicClick(context);
  } 
  if (index==2){
    pharmacyClick(context);
  } 
  if (index==3){
    labClick(context);
  } 
  }
}
  Future hospitalClick(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalPage()));
  }
  Future clinicClick(context) async {
    return Navigator.push(context, MaterialPageRoute(builder: (context) => ClinicPage()));
  }
  Future pharmacyClick(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => PharmacyPage()));
  }
  Future labClick(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LabPage()));
  }
