// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_learning/favorite_widget/favorite_theme.dart';
import 'package:flutter_learning/favorite_widget/message.dart';

class BottomCard extends StatefulWidget {
  const BottomCard({Key? key}) : super(key: key);

  @override
  State<BottomCard> createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  bool _isclicked = false;

  void aimerClick() {
    setState(() {
      _isclicked = !_isclicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              _isclicked ? Icons.favorite : Icons.favorite_border,
              color: Colors.yellow,
            ),
            iconSize: 40,
            onPressed: () {
              aimerClick();
              if (_isclicked) {
                const snackBar = SnackBar(
                    content: Text(
                      'Vous aimez',
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.blue);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                const snackBar = SnackBar(
                    content: Text(
                      'Vous n\'aimez pas',
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.red);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Message()));
            },
            icon: Icon(
              Icons.message,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
