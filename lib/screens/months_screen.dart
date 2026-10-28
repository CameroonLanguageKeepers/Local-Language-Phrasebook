import 'package:flutter/material.dart';

class MonthsScreen extends StatelessWidget {
  const MonthsScreen({super.key});

  static const Color primaryGreen = Color(0xFF1F6B35);
  static const Color backgroundColor = Color(0xFFFAF9F6);

  static const List<Map<String, String>> months = [
    {
      'english': 'January',
      'mokpe': 'Mbanje',
    },
    {
      'english': 'February',
      'mokpe': 'Ehzonjo Mekoko',
    },
    {
      'english': 'March',
      'mokpe': 'Etom’a Matia',
    },
    {
      'english': 'April',
      'mokpe': 'Kite Kite',
    },
    {
      'english': 'May',
      'mokpe': 'Ehvimba Mea',
    },
    {
      'english': 'June',
      'mokpe': 'Irzohve Rzohve',
    },
    {
      'english': 'July',
      'mokpe': 'Hweale',
    },
    {
      'english': 'August',
      'mokpe': 'Mboa Njoke',
    },
    {
      'english': 'September',
      'mokpe': 'Hwe Kondonde',
    },
    {
      'english': 'October',
      'mokpe': 'Egbe',
    },
    {
      'english': 'November',
      'mokpe': 'Mili Mendene',
    },
    {
      'english': 'December',
      'mokpe': 'Mili Merzale',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        surfaceTintColor: backgroundColor,
        centerTitle: true,
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
          'Months of the Year',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                32,
              ),
              children: [
                const Text(
                  'Months in Mokpe',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Learn the twelve months of the year in Mokpe.',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.4,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 24),
                ...months.map(
                  (month) => Padding(
                    padding: const EdgeInsets.only(
                      bottom: 14,
                    ),
                    child: _MonthCard(
                      english: month['english']!,
                      mokpe: month['mokpe']!,
                    ),
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

class _MonthCard extends StatelessWidget {
  final String english;
  final String mokpe;

  const _MonthCard({
    required this.english,
    required this.mokpe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFE4EBE6),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: MonthsScreen.primaryGreen
                  .withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.calendar_month_outlined,
              color: MonthsScreen.primaryGreen,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  english,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  mokpe,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}