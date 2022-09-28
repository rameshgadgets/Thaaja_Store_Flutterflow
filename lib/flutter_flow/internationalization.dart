import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'te', 'kn', 'hi', 'ta', 'ml'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? teText = '',
    String? knText = '',
    String? hiText = '',
    String? taText = '',
    String? mlText = '',
  }) =>
      [enText, teText, knText, hiText, taText, mlText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '1897s6rl': {
      'en': 'Vegetables',
      'hi': 'सब्ज़ियाँ',
      'kn': 'ತರಕಾರಿಗಳು',
      'ml': 'പച്ചക്കറികൾ',
      'ta': 'காய்கறிகள்',
      'te': 'కూరగాయలు',
    },
    'fjiezwmo': {
      'en': 'ADD',
      'hi': 'जोड़ें',
      'kn': 'ಸೇರಿಸಿ',
      'ml': 'ചേർക്കുക',
      'ta': 'கூட்டு',
      'te': 'జోడించు',
    },
    '26amwcgc': {
      'en': 'Fruits',
      'hi': 'फल',
      'kn': 'ಹಣ್ಣುಗಳು',
      'ml': 'പഴങ്ങൾ',
      'ta': 'பழங்கள்',
      'te': 'పండ్లు',
    },
    'cjojnl2b': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'ml': 'വീട്',
      'ta': 'வீடு',
      'te': 'హోమ్',
    },
  },
  // LoginPage
  {
    '3t54ve6c': {
      'en': 'Page Title',
      'hi': 'पृष्ठ का शीर्षक',
      'kn': 'ಪುಟದ ಶೀರ್ಷಿಕೆ',
      'ml': 'പേജിന്റെ പേര്',
      'ta': 'பக்கத்தின் தலைப்பு',
      'te': 'పుట శీర్షిక',
    },
    'ro0ez8gx': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'ml': 'വീട്',
      'ta': 'வீடு',
      'te': 'హోమ్',
    },
  },
  // ChooseYourLanguage
  {
    'an313g8m': {
      'en': 'Choose Your Language',
      'hi': 'अपनी भाषा चुनिए',
      'kn': 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆರಿಸಿ',
      'ml': 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക',
      'ta': 'உங்கள் மொழியை தேர்வு செய்யவும்',
      'te': 'మీ భాషను ఎంచుకోండి',
    },
    'rwhzcgq0': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'u8kfq2ut': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'w59ly3ty': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'xg0g4sr3': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'xh7q6jt3': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'p02n23u6': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '86pkktnk': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'ufkzikph': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '0fm0zaus': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '8p4wtyfr': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'er6qex90': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'vza4dv5j': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
  },
  // Cart
  {
    'fccpeh5e': {
      'en': 'Back',
      'hi': 'पीछे',
      'kn': 'ಹಿಂದೆ',
      'ml': 'തിരികെ',
      'ta': 'மீண்டும்',
      'te': 'వెనుకకు',
    },
    'lq3h2ooh': {
      'en': 'Cart',
      'hi': 'कार्ट',
      'kn': 'ಕಾರ್ಟ್',
      'ml': 'കാർട്ട്',
      'ta': 'வண்டி',
      'te': 'బండి',
    },
    '3hpgx1sz': {
      'en': 'Quanity: 1',
      'hi': 'मात्रा: 1',
      'kn': 'ಪ್ರಮಾಣ: 1',
      'ml': 'അളവ്: 1',
      'ta': 'அளவு: 1',
      'te': 'పరిమాణం: 1',
    },
    '30tlit86': {
      'en': 'Controller Basic',
      'hi': 'नियंत्रक मूल',
      'kn': 'ನಿಯಂತ್ರಕ ಮೂಲ',
      'ml': 'കൺട്രോളർ അടിസ്ഥാനം',
      'ta': 'கட்டுப்படுத்தி அடிப்படை',
      'te': 'కంట్రోలర్ బేసిక్',
    },
    'f2bcy0o8': {
      'en': '\$125.50',
      'hi': '\$125.50',
      'kn': '\$125.50',
      'ml': '\$125.50',
      'ta': '\$125.50',
      'te': '\$125.50',
    },
    '7l19qizu': {
      'en': 'Quanity: 1',
      'hi': 'मात्रा: 1',
      'kn': 'ಪ್ರಮಾಣ: 1',
      'ml': 'അളവ്: 1',
      'ta': 'அளவு: 1',
      'te': 'పరిమాణం: 1',
    },
    'wbq47mno': {
      'en': 'Price Breakdown',
      'hi': 'मूल्य विभाजन',
      'kn': 'ಬೆಲೆ ವಿಭಜನೆ',
      'ml': 'വില ബ്രേക്ക്ഡൗൺ',
      'ta': 'விலை முறிவு',
      'te': 'ధర విభజన',
    },
    'squ6wh06': {
      'en': 'Base Price',
      'hi': 'आधार मूल्य',
      'kn': 'ಮೂಲ ಬೆಲೆ',
      'ml': 'അടിസ്ഥാന വില',
      'ta': 'அடிப்படை விலை',
      'te': 'బేస్ ధర',
    },
    'hlm4apus': {
      'en': '\$156.00',
      'hi': '\$156.00',
      'kn': '\$156.00',
      'ml': '\$156.00',
      'ta': '\$156.00',
      'te': '\$156.00',
    },
    'ukh3c0qx': {
      'en': 'Taxes',
      'hi': 'करों',
      'kn': 'ತೆರಿಗೆಗಳು',
      'ml': 'നികുതികൾ',
      'ta': 'வரிகள்',
      'te': 'పన్నులు',
    },
    '4v3bjjc7': {
      'en': '\$24.20',
      'hi': '\$24.20',
      'kn': '\$24.20',
      'ml': '\$24.20',
      'ta': '\$24.20',
      'te': '\$24.20',
    },
    'n4xla69y': {
      'en': 'Cleaning Fee',
      'hi': 'साफ करने की फीस',
      'kn': 'ಶುಚಿಗೊಳಿಸುವ ಶುಲ್ಕ',
      'ml': 'ക്ലീനിംഗ് ഫീസ്',
      'ta': 'சுத்தம் கட்டணம்',
      'te': 'శుభ్రపరిచే రుసుము',
    },
    'x909f2d5': {
      'en': '\$40.00',
      'hi': '\$40.00',
      'kn': '\$40.00',
      'ml': '\$40.00',
      'ta': '\$40.00',
      'te': '\$40.00',
    },
    'dzx3z9no': {
      'en': 'Total',
      'hi': 'कुल',
      'kn': 'ಒಟ್ಟು',
      'ml': 'ആകെ',
      'ta': 'மொத்தம்',
      'te': 'మొత్తం',
    },
    'v47cyy61': {
      'en': '\$230.20',
      'hi': '\$230.20',
      'kn': '\$230.20',
      'ml': '\$230.20',
      'ta': '\$230.20',
      'te': '\$230.20',
    },
    'kij1nqms': {
      'en': 'Checkout (\$230.20)',
      'hi': 'चेकआउट (\$230.20)',
      'kn': 'ಚೆಕ್ಔಟ್ (\$230.20)',
      'ml': 'ചെക്ക്ഔട്ട് (\$230.20)',
      'ta': 'செக்அவுட் (\$230.20)',
      'te': 'చెక్అవుట్ (\$230.20)',
    },
    'pb6cvypk': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'ml': 'വീട്',
      'ta': 'வீடு',
      'te': 'హోమ్',
    },
  },
  // Categories
  {
    'aae6o3df': {
      'en': 'Page Title',
      'hi': 'पृष्ठ का शीर्षक',
      'kn': 'ಪುಟದ ಶೀರ್ಷಿಕೆ',
      'ml': 'പേജിന്റെ പേര്',
      'ta': 'பக்கத்தின் தலைப்பு',
      'te': 'పుట శీర్షిక',
    },
    '0hokydvc': {
      'en': 'Home',
      'hi': 'घर',
      'kn': 'ಮನೆ',
      'ml': 'വീട്',
      'ta': 'வீடு',
      'te': 'హోమ్',
    },
  },
  // Miscellaneous
  {
    'hy5oorrw': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'lc2k8k7h': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'yc3owsxr': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'td8j7gjg': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '8avbi70n': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'hjprtz1r': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '2j9mrifu': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'qzyoefrx': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '80a9ejmu': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'awxeoc4n': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'dz2izytu': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'wclfkgs7': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'spyzw2yi': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'dkdjstum': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '7wsb0twg': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'mvnsfq3o': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'd5phwcm8': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    '6b6eufx4': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'wysafec7': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
    'uoamr7rc': {
      'en': '',
      'hi': '',
      'kn': '',
      'ml': '',
      'ta': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
