// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_learning/data/card_item_data.dart';
import 'package:flutter_learning/favorite_widget/favorite_theme.dart';

class HeadCard extends StatelessWidget {
  const HeadCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/image/seeme1.JPG'),
            radius: 35,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${CardItemData.CardItemDataList[3].societyName}',
                style: FavoriteTheme.lightTextTheme.headline1,
              ),
              SizedBox(height: 7),
              Text(
                '${CardItemData.CardItemDataList[3].societyLocation}',
                style: FavoriteTheme.lightTextTheme.headline2,
              )
            ],
          )
        ],
      ),
    );
  }
}
