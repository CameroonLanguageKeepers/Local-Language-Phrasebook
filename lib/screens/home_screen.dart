import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'about_screen.dart';
import 'favorites_screen.dart';
import 'learn_mokpe_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color primaryGreen = Color(0xFF1F6B35);
  static const Color backgroundColor = Color(0xFFFAF9F6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Phrasebook',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: primaryGreen,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.black87,
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),

                  const Icon(
                    Icons.menu_book_rounded,
                    size: 58,
                    color: primaryGreen,
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Learn Mokpe step by step.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.45,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 30),

                  _HomeLearningCard(
                    icon: Icons.chat_bubble_outline_rounded,
                    title: 'Everyday Language',
                    subtitle:
                        'Greetings, family, food, travel, emergency and shopping',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CategoriesScreen(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 16),

                  _HomeLearningCard(
                    icon: Icons.school_outlined,
                    title: 'Learn Mokpe',
                    subtitle:
                        'Alphabet, days of the week and months of the year',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const LearnMokpeScreen(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 16),

                  _HomeLearningCard(
                    icon: Icons.psychology_alt_outlined,
                    title: 'Practice',
                    subtitle:
                        'Review saved words now. Quizzes and flashcards coming later',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const FavoritesScreen(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 28),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.language_rounded,
                          color: primaryGreen,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Mokpe is the first language in the Local Language Phrasebook.',
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.4,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: primaryGreen,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const FavoritesScreen(),
              ),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const AboutScreen(),
              ),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            activeIcon: Icon(Icons.star),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            activeIcon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }
}

class _HomeLearningCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _HomeLearningCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: const Color(0xFFE4EBE6),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: HomeScreen.primaryGreen
                      .withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  icon,
                  color: HomeScreen.primaryGreen,
                  size: 28,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 13.5,
                        height: 1.35,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 10),

              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 17,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}