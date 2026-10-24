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
  // GREETINGS
  Phrase(
    english: 'Hello',
    translation: 'Inmwai',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Good morning',
    translation: 'Elele ya gbamu / O liya gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Good afternoon',
    translation: 'Ngmerze mo gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Good evening',
    translation: 'Ngombe ya gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Welcome',
    translation: 'Hwe jeli hwe gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'How are you?',
    translation: 'Neh ohwa?',
    category: 'Greetings',
  ),
  Phrase(
    english: 'I am fine',
    translation: 'Na hweli gbamu',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Thank you',
    translation: 'Na rzomi',
    category: 'Greetings',
  ),
  Phrase(
    english: 'Goodbye',
    translation: 'Wèndè gbamu.',
    category: 'Greetings',
  ),
  Phrase(
    english: 'See you later',
    translation: 'Jainènè',
    category: 'Greetings',
  ),

  // FAMILY
  Phrase(
    english: 'Children',
    translation: 'Hwana',
    category: 'Family',
  ),
  Phrase(
    english: 'Father',
    translation: 'Tate / Tata',
    category: 'Family',
  ),
  Phrase(
    english: 'Mother',
    translation: 'Iya / Nyango',
    category: 'Family',
  ),
  Phrase(
    english: 'Brother',
    translation: 'Ngmanyango / Mwanyanggo',
    category: 'Family',
  ),
  Phrase(
    english: 'Sister',
    translation: 'Ndome',
    category: 'Family',
  ),
  Phrase(
    english: 'Uncle',
    translation: 'Mola',
    category: 'Family',
  ),
  Phrase(
    english: 'Aunt',
    translation: 'Ati',
    category: 'Family',
  ),
  Phrase(
    english: 'Family',
    translation: 'Lilumba',
    category: 'Family',
  ),
  Phrase(
    english: 'Grandfather',
    translation: 'Mbamba',
    category: 'Family',
  ),
  Phrase(
    english: 'Grandmother',
    translation: 'Mbamba',
    category: 'Family',
  ),

  // FOOD
  Phrase(
    english: 'Eat',
    translation: 'La',
    category: 'Food',
  ),
  Phrase(
    english: 'Drink',
    translation: 'Li nyo',
    category: 'Food',
  ),
  Phrase(
    english: 'Rice',
    translation: 'Kondi',
    category: 'Food',
  ),
  Phrase(
    english: 'Fish',
    translation: 'Nyama ya maliva',
    category: 'Food',
  ),
  Phrase(
    english: 'Meat',
    translation: 'Nyama',
    category: 'Food',
  ),
  Phrase(
    english: 'Pepper',
    translation: 'Indoko',
    category: 'Food',
  ),
  Phrase(
    english: 'Salt',
    translation: 'Ikpa',
    category: 'Food',
  ),
  Phrase(
    english: 'Hunger',
    translation: 'Njao',
    category: 'Food',
  ),
  Phrase(
    english: 'Food',
    translation: 'Moleli',
    category: 'Food',
  ),
  Phrase(
    english: 'Water',
    translation: 'Malihwa',
    category: 'Food',
  ),

  // TRAVEL
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
    translation: 'Ndio',
    category: 'Travel',
  ),
  Phrase(
    english: 'Airport',
    translation: '',
    category: 'Travel',
  ),
  Phrase(
    english: 'Travel',
    translation: 'Ende / Yondo',
    category: 'Travel',
  ),
  Phrase(
    english: 'Driver',
    translation: 'Molukaneli',
    category: 'Travel',
  ),
  Phrase(
    english: 'Stop',
    translation: 'Teme',
    category: 'Travel',
  ),
  Phrase(
    english: 'Go',
    translation: 'Li ende / Ende',
    category: 'Travel',
  ),
  Phrase(
    english: 'Ticket',
    translation: 'Tiketi / Lifafe',
    category: 'Travel',
  ),

  // EMERGENCY
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
    translation: 'Ndawa ya nganga / Wasipita',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Danger',
    translation: 'Woweh',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Ambulance',
    translation: 'Moto mo Nyambe',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Call',
    translation: 'Wele / Ekeka',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Injury',
    translation: 'Li hwena / Mbenako',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Accident',
    translation: 'Mbenako',
    category: 'Emergency',
  ),
  Phrase(
    english: 'Run',
    translation: 'Li hwanga / Wanga',
    category: 'Emergency',
  ),

  // SHOPPING
  Phrase(
    english: 'Money',
    translation: 'Kava',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Buy',
    translation: 'Andah',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Sell',
    translation: 'Awirzè',
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
    translation: '',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Food',
    translation: 'Moleli',
    category: 'Shopping',
  ),
  Phrase(
    english: 'Bag',
    translation: 'Likpa',
    category: 'Shopping',
  ),
];