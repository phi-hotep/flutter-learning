// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_learning/data/card_item_data.dart';
import 'package:flutter_learning/favorite_widget/bottomCard.dart';
import 'package:flutter_learning/favorite_widget/headcard.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('${CardItemData.CardItemDataList[3].tof}'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [HeadCard(), SizedBox(height: 400), BottomCard()],
      ),
    );
  }
}
