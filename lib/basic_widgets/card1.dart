import 'package:flutter/material.dart';
import 'fooderlich.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // 1
  final String category = 'Le choix de l\'éditeur';
  final String title = 'l\'art du Taro';
  final String description = 'Apprennez à faire un bon plat de taro';
  final String chef = 'Par H. Bomokin';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(
        child: Stack(
          children: [
            // 8
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            // 9
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            // 10
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            // 11
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),

        padding: const EdgeInsets.all(16),
        // 2
        // width: 350,
        // height: 200,
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 350,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: AssetImage('asset/image/taroSauceJaune.jpg'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(13.0)),
        ),
      ),
    );
  }
}
