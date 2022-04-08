import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // elevation for shadow
          elevation: 7,
          shadowColor: Colors.blueAccent,
          //
          // we can adjust height and opacity using this
          toolbarHeight: 75,
          toolbarOpacity: 0.5, // value will be given between 0 to 1
          //
          title: Text("TITLE"),
          centerTitle: true,
          backgroundColor: Colors.lime,
          actions: [Icon(Icons.edit)],
          actionsIconTheme: IconThemeData(color: Colors.red, size: 30),
        ),
        body: Center(child: Text("hello")),
      ),
    );
  }
}
