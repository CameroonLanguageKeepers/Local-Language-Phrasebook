import 'package:flutter/material.dart';

import '../data/favorites.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        centerTitle: true,
      ),
      body: favoritePhrases.isEmpty
          ? const Center(
              child: Text(
                'No favorite phrases yet.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            )
          : Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: favoritePhrases.length,
                  itemBuilder: (context, index) {
                    final phrase = favoritePhrases[index];

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
                        trailing: const Icon(
                          Icons.star,
                          color: Color(0xFF1F6B35),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }
}