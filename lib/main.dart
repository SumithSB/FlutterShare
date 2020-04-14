import 'package:flutter/material.dart';
import 'package:fluttershare/pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
  Firestore.instance
      .settings(timestampsInSnapshotsEnabled: true)
      .then((_) => print("Timestamp enabled in snapshots\n"), onError: (_) {
    print("Error enabling in snapshots\n");
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterShare',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.deepPurple, accentColor: Colors.teal),
      home: Home(),
    );
  }
}
