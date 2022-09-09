import 'package:flutter/material.dart';

import 'cuisineafro_theme.dart';

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
            image: AssetImage('assets/mais.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // TODO 5: Add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                // 1
                color: Colors.black.withOpacity(0.6),
                // 2
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            // TODO 6: Add Container, Column, Icon and Text
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
                  Text('Plat de mais',
                      style: CuisineAfroTheme.darkTextTheme.headline2),
                  // 9
                  const SizedBox(height: 30),
                ],
              ),
            ),
            // TODO 7: Add Center widget with Chip widget children
            // 10
            Center(
              // 11
              child: Wrap(
                // 12
                alignment: WrapAlignment.start,
                // 13
                spacing: 12,
                //14
                runSpacing: 12,
                // 15
                children: [
                  Chip(
                    label: Text('Mais',
                        style: CuisineAfroTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Feuille manioc',
                        style: CuisineAfroTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Huile rouge',
                        style: CuisineAfroTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Aille',
                        style: CuisineAfroTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Cube magie',
                        style: CuisineAfroTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
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
