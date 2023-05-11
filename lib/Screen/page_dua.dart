import "package:flutter/material.dart";

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("NavigaroPage 2")),
        body: Center(
          child: Text("Ini Page 2"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}