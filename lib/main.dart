import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<String> categories = [
    'Greetings',
    'Family',
    'Food',
    'Travel',
    'Emergency',
    'Shopping',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Phrasebook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1F6B35),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Phrasebook'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: MyApp.categories.length,
        itemBuilder: (context, index) {
          final category = MyApp.categories[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.folder_outlined),
              title: Text(category),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }
}