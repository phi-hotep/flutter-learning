// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_learning/favorite_widget/card_view.dart';

class HomeFavorite extends StatelessWidget {
  const HomeFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CardView(),
      ),
    );
  }
}
