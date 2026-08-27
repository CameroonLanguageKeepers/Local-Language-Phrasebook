import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.menu_book_rounded,
                  size: 80,
                  color: Color(0xFF1F6B35),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Local Language Phrasebook',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Learn • Preserve • Share',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1F6B35),
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 28),

                const Text(
                  'This app helps users learn everyday phrases in Mokpe through simple categories and translations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 24),

                const Divider(),

                const SizedBox(height: 16),

                const Text(
                  'Version 1.0',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}