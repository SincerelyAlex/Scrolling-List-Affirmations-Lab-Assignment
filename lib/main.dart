import 'package:flutter/material.dart';

// Alex Hoang

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
    affirmationText: 'I am a good programmer.',
    imagePath: 'assets/images/god_rays.jpg',
  ), 
  Affirmation(
    affirmationText: 'I am confident in my abilities.',
    imagePath: 'assets/images/Crimson_sunset.jpg',
  ),
  Affirmation(
    affirmationText: 'I am constantly curious and willing to learn.',
    imagePath: 'assets/images/Florida_sunset.jpg',
  ),
  Affirmation(
    affirmationText: 'I can perservere through all challenges.',
    imagePath: 'assets/images/orange_and_blue.jpg',
  ),
  Affirmation(
    affirmationText: 'I am open-minded and respectful to my peers.',
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
              clipBehavior: Clip.antiAlias,
              color: Colors.amber[500],
              margin: const EdgeInsets.all(8),
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
