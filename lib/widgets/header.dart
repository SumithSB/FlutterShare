import 'package:flutter/material.dart';
import 'package:fluttershare/chats/main_screen.dart';
import 'package:fluttershare/pages/home.dart';

header(context,
    {bool isAppTitle = false,
    String titleText,
    removeBackButton = false,
    isAction: false}) {
  return AppBar(
    automaticallyImplyLeading: removeBackButton ? false : true,
    title: Text(
      isAppTitle ? "FlutterShare" : titleText,
      style: TextStyle(
        color: Colors.white,
        fontFamily: isAppTitle ? 'Signatra' : '',
        fontSize: isAppTitle ? 50.0 : 22.0,
      ),
    ),
    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
    actions: isAction
        ? <Widget>[
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                print("userId");
                print(currentUser.id);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MainScreen(currentUserId: currentUser.id)));
              },
            )
          ]
        : null,
  );
}
