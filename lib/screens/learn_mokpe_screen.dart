import 'days_screen.dart';
import 'months_screen.dart';
import 'package:flutter/material.dart';

class LearnMokpeScreen extends StatelessWidget {
  const LearnMokpeScreen({super.key});

  static const Color primaryGreen = Color(0xFF1F6B35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF8),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Learn Mokpe',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
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
                24,
                20,
                32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Build your Mokpe foundation',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Start with the basics of the language and learn step by step.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 28),

                  _LearnCard(
                    icon: Icons.abc_rounded,
                    title: 'Alphabet',
                    subtitle: 'Learn Mokpe letters and example words',
                    onTap: () {
                      _comingSoon(context, 'Alphabet');
                    },
                  ),

                  const SizedBox(height: 16),

                  _LearnCard(
  icon: Icons.calendar_view_week_rounded,
  title: 'Days of the Week',
  subtitle: 'Learn the seven days in Mokpe',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DaysScreen(),
      ),
    );
  },
),

                  const SizedBox(height: 16),

                 _LearnCard(
  icon: Icons.calendar_month_rounded,
  title: 'Months of the Year',
  subtitle: 'Learn all twelve months in Mokpe',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MonthsScreen(),
      ),
    );
  },
),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static void _comingSoon(
    BuildContext context,
    String title,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title coming next'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

class _LearnCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _LearnCard({
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
                  color: LearnMokpeScreen.primaryGreen
                      .withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.school_outlined,
                  color: LearnMokpeScreen.primaryGreen,
                  size: 28,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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