import 'package:flutter/material.dart';

import '../data/phrases.dart';
import '../data/favorites.dart';

class PhraseListScreen extends StatefulWidget {
  final String category;

  const PhraseListScreen({
    super.key,
    required this.category,
  });

  @override
  State<PhraseListScreen> createState() => _PhraseListScreenState();
}

class _PhraseListScreenState extends State<PhraseListScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final categoryPhrases = phrases
        .where((phrase) => phrase.category == widget.category)
        .where(
          (phrase) =>
              phrase.english.toLowerCase().contains(searchQuery.toLowerCase()) ||
              phrase.translation.toLowerCase().contains(searchQuery.toLowerCase()),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category} Phrases'),
      ),
      
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search phrases...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
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
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                phrase.translation,
                style: const TextStyle(
                  color: Color(0xFF1F6B35),
                  fontSize: 15,
            ),
              ),

              trailing: IconButton(
  icon: Icon(
    favoritePhrases.contains(phrase)
        ? Icons.star
        : Icons.star_border,
    color: const Color(0xFF1F6B35),
  ),
  onPressed: () {
    setState(() {
      if (favoritePhrases.contains(phrase)) {
        favoritePhrases.remove(phrase);
      } else {
        favoritePhrases.add(phrase);
      }
    });
  },
),
            ),
          );
        },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}