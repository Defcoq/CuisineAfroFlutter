import 'package:flutter/material.dart';

import 'author_card.dart';
import 'cuisineafro_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
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
            image: AssetImage('assets/taropilesaucejaune.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            // TODO 1: add author information
            const AuthorCard(
              authorName: 'Jean Pierre',
              title: 'Cuisinier Pro',
              imageProvider: AssetImage('assets/cuisnier_pro.jpeg'),
            ),
            // TODO 4: add Positioned text
            // 1
            Expanded(
              // 2
              child: Stack(
                children: [
                  // 3
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recette',
                      style: CuisineAfroTheme.lightTextTheme.headline1,
                    ),
                  ),
                  // 4
                  Positioned(
                    bottom: 120,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Taro Sauce',
                        style: CuisineAfroTheme.darkTextTheme.headline1,
                      ),
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
