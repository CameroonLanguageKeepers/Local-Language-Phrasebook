import 'package:flutter/material.dart';
import 'phrase_list_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  static const List<String> categories = [
    'Greetings',
    'Family',
    'Food',
    'Travel',
    'Emergency',
    'Shopping',
  ];

  static const List<IconData> categoryIcons = [
  Icons.waving_hand_outlined,
  Icons.groups_outlined,
  Icons.restaurant_outlined,
  Icons.directions_bus_outlined,
  Icons.medical_services_outlined,
  Icons.shopping_bag_outlined,
];

static const List<Color> categoryColors = [
  Color(0xFFFFF4D6), // Greetings
  Color(0xFFF1EAFE), // Family
  Color(0xFFFFF0D9), // Food
  Color(0xFFE6F3FF), // Travel
  Color(0xFFFFE8E8), // Emergency
  Color(0xFFEAF7EA), // Shopping
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return Card(
            color: categoryColors[index],
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(
                categoryIcons[index],
                color: const Color(0xFF1F6B35),
              ),
              title: Text(category),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhraseListScreen(category: category),
                  ),
                );
              },
            ),
          );
        },
      ),
    ),
      ),
    );
  }
}