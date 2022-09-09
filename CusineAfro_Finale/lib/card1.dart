import 'package:flutter/material.dart';

import 'cuisineafro_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // 1
  final String category = 'Michui de Porc';
  final String title = 'Porc De Dschang';
  final String description = 'Apprendre à faire un special Michui';
  final String chef = 'ItInnovDesign';

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
              style: CuisineAfroTheme.darkTextTheme.bodyText1,
            ),
            // 9
            Positioned(
              child: Text(
                title,
                style: CuisineAfroTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            // 10
            Positioned(
              child: Text(
                description,
                style: CuisineAfroTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            // 11
            Positioned(
              child: Text(
                chef,
                style: CuisineAfroTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        // 1
        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: AssetImage('assets/michui.png'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
