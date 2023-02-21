// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GRID VIEW && DATA VIEW", textAlign: TextAlign.center),
        ),
        // container widget created and its properties
        body: Container(
            margin: EdgeInsets.all(20),
            width: 400,
            height: 700,
            color: Colors.blue,
            // listView created inside the container to help us scroll up or down
            child: ListView(children: [
              Column(children: [
                Text("ALU YEAR 3 COMPUTER SCIENCE COURSES",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                    // sizedBox widget used to give space betwen element/ text
                SizedBox(
                    height: 400,
                    child: Center(
                        child: GridView.count(
                      primary: false,
                      padding: EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.amber,
                          child: const Text(
                            "Artificial Intelligent",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.amber,
                          child: const Text(
                            'Cloud Platform Development',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.amber,
                          child: const Text(
                            'Networks',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.amber,
                          child: const Text(
                            'Mobile Platform Development',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ))),
                Text("THE FACILITATORS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                DataTable(
                    columnSpacing: 10,
                    sortColumnIndex: 1,
                    border: TableBorder(
                        top: BorderSide(width: 1),
                        bottom: BorderSide(width: 1),
                        left: BorderSide(width: 1),
                        right: BorderSide(width: 1),
                        verticalInside: BorderSide(width: 1),
                        horizontalInside: BorderSide(width: 1)),
                    columns: [
                      DataColumn(
                          label: Text("Course_Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center)),
                      DataColumn(
                          label: Text("Facilitator_Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center)),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("AI",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                        DataCell(Text("Robert",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("Networks",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                        DataCell(Text("Thadee",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("Mobile plat dev",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                        DataCell(Text("Dr Kundan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center))
                      ]),
                      DataRow(cells: [
                        DataCell(Text("Cloud plat dev",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                        DataCell(Text("Issac",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                      ])
                    ])
              ], 
            )
            ])
            ));
  }
}
