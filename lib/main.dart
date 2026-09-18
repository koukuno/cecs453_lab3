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
    var cards = <AffirmationCard>[];
    for (var i = 0; i < 10; ++i) {
      cards.add(AffirmationCard(imagePath: "assets/test.png", imageLabel: "test", message: "Test Message $i"));
    }

    return Scaffold(
      body: ListView(children: cards),
    );
  }
}
