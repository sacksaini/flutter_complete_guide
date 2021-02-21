import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
              backgroundColor: Colors.lightBlue,
            ),
            body: Scaffold(
              backgroundColor: Colors.blueGrey,
              body: Text("This is the text"),
              floatingActionButton: Text("Float"),
            )));
  }
}
