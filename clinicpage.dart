import 'package:flutter/material.dart';

class ClinicPage extends StatefulWidget {
  @override
  _ClinicPageState createState() => _ClinicPageState();
}

class _ClinicPageState extends State<ClinicPage> {
  bool sort = true;

  List<int> sno = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<String> itemList = [
    'Item- 1',
    'Item- 2',
    'Item- 3',
    'Item- 4',
    'Item- 5',
    'Item- 6',
    'Item- 7',
    'Item- 8',
    'Item- 9',
    'Item- 10',
    'Item- 11',
    'Item- 12',
    'Item- 13',
    'Item- 14',
    'Item- 15'
  ];

  onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        sno.sort((a, b) => a.compareTo(b));
        itemList = itemList.reversed.toList();
      } else {
        sno.sort((b, a) => a.compareTo(b));
        itemList = itemList.reversed.toList();
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Nearby Clinics'),
          backgroundColor: Color.fromRGBO(15, 48, 87, 1),
      ),
      body:
      SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            sortColumnIndex: 0,
            sortAscending: sort,
            columns: [
              DataColumn(
                  label: Text('No.'),
                  numeric: true,
                  onSort: (columnIndex, ascending) {
                    setState(() {
                      sort = !sort;
                    });
                    onSort(columnIndex, ascending);
                  }),
              DataColumn(label: Text('Clinic')),
              DataColumn(label: Text('Distance')),
              DataColumn(label: Text('Rating')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('${sno[0]}')),
                  DataCell(Text('The Pain Medic')),
                  DataCell(Text('2 KM')),
                  DataCell(Text('★★★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[1]}')),
                  DataCell(Text('Universal Body Clinic')),
                  DataCell(Text('4 KM')),
                  DataCell(Text('★★★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[2]}')),
                  DataCell(Text('The Healing Clinic')),
                  DataCell(Text('5 KM')),
                  DataCell(Text('★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[3]}')),
                  DataCell(Text('Sports Medicine Clinic')),
                  DataCell(Text('7 KM')),
                  DataCell(Text('★★★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[4]}')),
                  DataCell(Text('Zencare Clinic')),
                  DataCell(Text('8 KM')),
                  DataCell(Text('★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[5]}')),
                  DataCell(Text('Expresscare Medical Clinic')),
                  DataCell(Text('12 KM')),
                  DataCell(Text('★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[6]}')),
                  DataCell(Text('Shelter Health Services')),
                  DataCell(Text('14 KM')),
                  DataCell(Text('★★★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[7]}')),
                  DataCell(Text('The Healing Clinic')),
                  DataCell(Text('15 KM')),
                  DataCell(Text('★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[8]}')),
                  DataCell(Text('Women’s Resource Clinic')),
                  DataCell(Text('21 KM')),
                  DataCell(Text('★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[9]}')),
                  DataCell(Text('Sports Medicine Clinic')),
                  DataCell(Text('25 KM')),
                  DataCell(Text('★★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[10]}')),
                  DataCell(Text('Travel Medical Clinics')),
                  DataCell(Text('30 KM')),
                  DataCell(Text('★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[11]}')),
                  DataCell(Text('Natural Health Clinic')),
                  DataCell(Text('35 KM')),
                  DataCell(Text('★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[12]}')),
                  DataCell(Text('Medical Clinics')),
                  DataCell(Text('41 KM')),
                  DataCell(Text('★★★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[13]}')),
                  DataCell(Text('Injury Care Medics')),
                  DataCell(Text('45 KM')),
                  DataCell(Text('★')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('${sno[14]}')),
                  DataCell(Text('Travel Medical Clinics')),
                  DataCell(Text('50 KM')),
                  DataCell(Text('★★★★★')),
                ],
              ),
            ],
          ),
        ),
    ),
    )
    );
  }
}