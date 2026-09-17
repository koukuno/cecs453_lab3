import 'package:flutter/material.dart';

void main() {
  runApp(const AffirmationsApp());
}

class AffirmationsApp extends StatelessWidget {
  const AffirmationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Affirmations",
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
      ),
      home: const AffirmationsHomePage(),
    );
  }
}

class AffirmationCard extends StatelessWidget {
  final String imagePath;
  final String imageLabel;
  final String message;

  const AffirmationCard({super.key, required this.imagePath, required this.imageLabel, required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(children: [
      Image(image: AssetImage(imagePath), semanticLabel: imageLabel),
      Text(message),
    ]));
  }
}

class AffirmationsHomePage extends StatelessWidget {
  const AffirmationsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cards = <AffirmationCard>[];
    for (var i = 0; i < 10; ++i) {
      cards.add(AffirmationCard(imagePath: "assets/test.png", imageLabel: "test", message: "Test Message $i"));
    }

    return ListView(children: cards);
  }
}
