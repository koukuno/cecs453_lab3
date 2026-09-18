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
    // clipBehavior needed so the image in the card looks like it fits
    // in the card rather than being on top of it
    return Card(clipBehavior: Clip.antiAlias, child: Column(children: [
      Image(image: AssetImage(imagePath), semanticLabel: imageLabel),
      Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 10.0), child: Text(message, style: TextStyle(fontSize: 16.0))),
    ]));
  }
}

class AffirmationsHomePage extends StatelessWidget {
  const AffirmationsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        AffirmationCard(imagePath: "assets/images/birds.jpg", imageLabel: "Birds on a tree", message: "Autumn is here"),
        AffirmationCard(imagePath: "assets/images/cat_sleep.jpg", imageLabel: "Cat sleeping", message: "Get a good night's sleep for the next day"),
        AffirmationCard(imagePath: "assets/images/rocky_beach.jpg", imageLabel: "A rocky beach along the Pacific Ocean", message: "There is always room for improvement"),
        AffirmationCard(imagePath: "assets/images/trees.jpg", imageLabel: "Trees in the evening", message: "Take breaks and relax"),
      ]),
    );
  }
}
