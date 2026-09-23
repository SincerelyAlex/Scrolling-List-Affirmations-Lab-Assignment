import 'package:flutter/material.dart';

class Affirmation {
  final String affirmationText;
  final String imagePath;

  Affirmation({
    required this.affirmationText,
    required this.imagePath
  });
}

List<Affirmation> affirmationsList = [
  Affirmation(
    affirmationText: 'You\'re goated',
    imagePath: 'assets/images/god_rays.jpg',
  ), 
  Affirmation(
    affirmationText: 'You\'re goated goated',
    imagePath: 'assets/images/Crimson_sunset.jpg',
  ),
  Affirmation(
    affirmationText: 'You\'re goated goated goated',
    imagePath: 'assets/images/Florida_sunset.jpg',
  ),
  Affirmation(
    affirmationText: 'You\'re goated goated goated goated',
    imagePath: 'assets/images/orange_and_blue.jpg',
  ),
  Affirmation(
    affirmationText: 'You\'re goated goated goated goated goated',
    imagePath: 'assets/images/Sunset_in_idaho.jpg',
  ),
];

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: affirmationsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.amber[700],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(affirmationsList[index].imagePath),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(affirmationsList[index].affirmationText),
                  )
                ],
              ),
            );
          }
        )

      ),
    );
  }
}
