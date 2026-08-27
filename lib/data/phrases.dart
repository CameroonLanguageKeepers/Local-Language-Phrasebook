class Phrase {
  final String english;
  final String translation;
  final String category;
  const Phrase({
    required this.english,
    required this.translation,
    required this.category,
  });
}

const List<Phrase> phrases = [
  Phrase(
    english: 'Hello',
    translation: 'Wele',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Good morning',
    translation: 'Elela Gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Good afternoon',
    translation: 'Njezre Mo Gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Good evening',
    translation: 'Ngomba Gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Welcome',
    translation: 'Wole Lowa',
    category: 'Greetings',
  ),
  Phrase(
    english: 'How are you?',
    translation: 'O Di Bote?',
    category: 'Greetings',
  ),
  Phrase(
    english: 'I am fine',
    translation: 'Me Di Bote',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Thank you',
    translation: 'Jeki Zrai',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Goodbye',
    translation: 'Wosa',
    category: 'Greetings',
  ),
  Phrase(
    english: 'See you later',
    translation: 'Towele Nde',
    category: 'Greetings',
  ),

    Phrase(
    english: 'Children',
    translation: 'hwana',
    category: 'Family',
  ),
  Phrase(
    english: 'Father',
    translation: 'Tata',
    category: 'Family',
  ),
  Phrase(
    english: 'Mother',
    translation: 'Mama',
    category: 'Family',
  ),
  Phrase(
    english: 'Brother',
    translation: 'Ndeko',
    category: 'Family',
  ),
  Phrase(
    english: 'Sister',
    translation: 'Ndeko Mwasi',
    category: 'Family',
  ),
  Phrase(
    english: 'Uncle',
    translation: 'Ese',
    category: 'Family',
  ),
  Phrase(
    english: 'Aunt',
    translation: 'Mawe',
    category: 'Family',
  ),
  Phrase(
    english: 'Family',
    translation: 'Ndabo',
    category: 'Family',
  ),
  Phrase(
    english: 'Grandfather',
    translation: 'Nkolo',
    category: 'Family',
  ),
  Phrase(
    english: 'Grandmother',
    translation: 'Nkolo Mwasi',
    category: 'Family',
  ),

    Phrase(
    english: 'Eat',
    translation: 'Lia',
    category: 'Food',
  ),
  Phrase(
    english: 'Drink',
    translation: 'Nwa',
    category: 'Food',
  ),
  Phrase(
    english: 'Rice',
    translation: 'Lele',
    category: 'Food',
  ),
  Phrase(
    english: 'Fish',
    translation: 'Ngolo',
    category: 'Food',
  ),
  Phrase(
    english: 'Meat',
    translation: 'Nyama',
    category: 'Food',
  ),
  Phrase(
    english: 'Pepper',
    translation: 'Limbe',
    category: 'Food',
  ),
  Phrase(
    english: 'Salt',
    translation: 'Moli',
    category: 'Food',
  ),
  Phrase(
    english: 'Hunger',
    translation: 'Njala',
    category: 'Food',
  ),
  Phrase(
    english: 'Food',
    translation: 'Moleli',
    category: 'Food',
  ),
  Phrase(
    english: 'Water',
    translation: 'Mandi',
    category: 'Food',
  ),

    Phrase(
    english: 'Car',
    translation: 'Motowa',
    category: 'Travel',
  ),
  Phrase(
    english: 'Road',
    translation: 'Njia',
    category: 'Travel',
  ),
  Phrase(
    english: 'Bus',
    translation: 'Motowa',
    category: 'Travel',
  ),
  Phrase(
    english: 'Taxi',
    translation: 'Ndia',
    category: 'Travel',
  ),
  Phrase(
    english: 'Airport',
    translation: 'Ekowa',
    category: 'Travel',
  ),
  Phrase(
    english: 'Travel',
    translation: 'Yondo',
    category: 'Travel',
  ),
  Phrase(
    english: 'Driver',
    translation: 'Wa Moto',
    category: 'Travel',
  ),
  Phrase(
    english: 'Stop',
    translation: 'Teme',
    category: 'Travel',
  ),
  Phrase(
    english: 'Go',
    translation: 'Ende',
    category: 'Travel',
  ),
  Phrase(
    english: 'Ticket',
    translation: 'Lifafe',
    category: 'Travel',
  ),

    Phrase(
    english: 'Help',
    translation: 'Jongwane',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Fire',
    translation: 'Munya',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Police',
    translation: 'Mokuse',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Hospital',
    translation: 'Nganga',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Danger',
    translation: 'Woveh',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Ambulance',
    translation: 'Moto-mo Nyambe',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Call',
    translation: 'Ekeka',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Injury',
    translation: 'Mbenako',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Accident',
    translation: 'Mbenako',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Run',
    translation: 'Livangi',
    category: 'Emergency',
  ),

    Phrase(
    english: 'Money',
    translation: 'Kaffa',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Buy',
    translation: 'Andah',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Sell',
    translation: 'Aviseh',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Price',
    translation: 'Malongo',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Expensive',
    translation: 'Mosusely',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Cheap',
    translation: 'Mosuseli',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Market',
    translation: 'Eluwa',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Shop',
    translation: 'Likala',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Food',
    translation: 'Molely',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Bag',
    translation: 'Likpa',
    category: 'Shopping',
  ),
];