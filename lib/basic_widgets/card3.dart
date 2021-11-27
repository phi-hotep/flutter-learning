// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'fooderlich.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/seeme1.JPG'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // 1
                color: Colors.black.withOpacity(0.6),
                // 2
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              // 3
              padding: const EdgeInsets.all(16),
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 6
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  const SizedBox(height: 8),
                  // 8
                  Text(
                    'Tendances de recettes',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  // 9
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              // 11
              child: Wrap(
                // 12
                alignment: WrapAlignment.start,
                // 13
                spacing: 12,
                // 14
                children: [
                  Chip(
                    label: Text('Santé',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.6),
                    elevation: 10,
                    shadowColor: Colors.amber,
                    deleteIcon: Icon(Icons.cancel),
                    deleteIconColor: Colors.red,
                    deleteButtonTooltipMessage: 'Enlever',
                    onDeleted: () {
                      print('delete');
                    },
                    avatar: CircleAvatar(
                      child: Text('S'),
                    ),
                  ),
                  Chip(
                    label: Text('Végétarien',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.6),
                    deleteIconColor: Colors.red,
                    onDeleted: () {
                      print('delete');
                    },
                    avatar: CircleAvatar(
                      child: Text('V'),
                    ),
                  ),
                  Chip(
                    label: Text('Carottes',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.6),
                    deleteIconColor: Colors.red,
                    onDeleted: () {
                      print('delete');
                    },
                    avatar: CircleAvatar(
                      child: Text('C'),
                    ),
                  ),
                  Chip(
                    label: Text('Poisson',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.6),
                    deleteIconColor: Colors.red,
                    onDeleted: () {
                      print('delete');
                    },
                    avatar: CircleAvatar(
                      child: Text('P'),
                    ),
                  ),
                  Chip(
                    label: Text('Viande',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.6),
                    deleteIconColor: Colors.red,
                    onDeleted: () {
                      print('delete');
                    },
                    avatar: CircleAvatar(
                      child: Text('V'),
                    ),
                  ),
                  Chip(
                    label: Text('Fruits',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.6),
                    deleteIconColor: Colors.red,
                    onDeleted: () {
                      print('delete');
                    },
                    avatar: CircleAvatar(
                      child: Text('F'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
