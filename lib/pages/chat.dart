import 'package:flutter/material.dart';
import 'package:fluttershare/widgets/header.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,titleText: "Messages"),
      backgroundColor: Colors.greenAccent[100],
    
    );
  }
}
