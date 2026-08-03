import 'package:flutter/material.dart';

import '../data/phrases.dart';

class PhraseListScreen extends StatelessWidget {
  final String category;

  const PhraseListScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final categoryPhrases = phrases
        .where((phrase) => phrase.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Phrases'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categoryPhrases.length,
        itemBuilder: (context, index) {
          final phrase = categoryPhrases[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text(
                phrase.english,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(phrase.translation),
            ),
          );
        },
      ),
    );
  }
}