import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
       final mediaQueryWidth = MediaQuery.of(context).size.width;
       final mediaQueryHeight = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

  return MaterialApp(
    debugShowCheckedModeBanner:false,
    home: ListView(
      children: [
      Column(
        children: [
          Container(
            height: mediaQueryHeight,
            width: mediaQueryWidth,
            color: Colors.white,
            child: Text("Hello World"),
          )
        ],
      )
      ],
    )
  );
  }
}