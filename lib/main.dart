// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'basic_widgets/fooderlich.dart';
// import 'basic_widgets/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_learning/favorite_widget/favorite_theme.dart';
import 'package:flutter_learning/favorite_widget/home.dart';

void main() {
  runApp(const TrainingApp());
}

class TrainingApp extends StatelessWidget {
  const TrainingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FavoriteTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Bomo Favorites',
      home: HomeFavorite(),
    );
  }
}



















































// class TrainningAppHome extends StatefulWidget {
//   const TrainningAppHome({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<TrainningAppHome> createState() => _TrainningAppHomeState();
// }

// class _TrainningAppHomeState extends State<TrainningAppHome> {
//   int x = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Slider(
//             min: 1,
//             max: 10,
//             divisions: 20,
//             label: 'deja à $x',
//             thumbColor: Colors.red,
//             value: x.toDouble(),
//             onChanged: (newValue) {
//               setState(() {
//                 x = newValue.round();
//               });
//             },
//             activeColor: Colors.green,
//             inactiveColor: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget buildRecipeCard(Recipe recipe) {
//   return Card(
//     elevation: 2.0,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//     child: Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Image(
//             image: AssetImage(recipe.imageUrl!),
//           ),
//           SizedBox(height: 14.0),
//           Text(
//             recipe.label!,
//             style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: 'Palatino'),
//           )
//         ],
//       ),
//     ),
//   );
// }

// Widget buildImage(String? img) {
//   return SizedBox(
//     height: 100,
//     width: 100,
//     child: FittedBox(
//       alignment: Alignment.center,
//       fit: BoxFit.cover,
//       child: Image.asset('$img'),
//     ),
//   );
// }
