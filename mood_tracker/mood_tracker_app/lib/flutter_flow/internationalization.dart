import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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
    '0fnzdf4e': {
      'en': 'Hello, \nRonald richard 👋',
      'ar': 'مرحبًا،\nرونالد ريتشارد 👋',
    },
    'sjqvnn4a': {
      'en': 'Mental health',
      'ar': 'الصحة النفسية',
    },
    '2uh06r78': {
      'en': '192',
      'ar': '192',
    },
    'h0ldkgf8': {
      'en': 'total',
      'ar': 'المجموع',
    },
    'xk2g3043': {
      'en': 'Mental health percentage \nconversations',
      'ar': 'نسبة الصحة النفسية\nالمحادثات',
    },
    '3l58wvgb': {
      'en': 'Monthly stats',
      'ar': 'احصائيات شهرية',
    },
    'ko6h69h5': {
      'en': 'View all',
      'ar': 'عرض الكل',
    },
    'op1hm3gu': {
      'en': 'Sun',
      'ar': 'شمس',
    },
    'oj3x4okz': {
      'en': '1',
      'ar': '1',
    },
    '1rsc9gcj': {
      'en': 'Mon',
      'ar': 'الاثنين',
    },
    'j31w7qcq': {
      'en': '2',
      'ar': '2',
    },
    '0ae17gno': {
      'en': 'Tue',
      'ar': 'الثلاثاء',
    },
    '05y4hw7i': {
      'en': '3',
      'ar': '3',
    },
    '8gfpmmei': {
      'en': 'Wed',
      'ar': 'تزوج',
    },
    'gl8jrqkz': {
      'en': '4',
      'ar': '4',
    },
    'sjnd0lk9': {
      'en': 'Thu',
      'ar': 'الخميس',
    },
    '6e6vyald': {
      'en': '5',
      'ar': '5',
    },
    'bymxk38c': {
      'en': 'Fri',
      'ar': 'الجمعة',
    },
    'w995bsh3': {
      'en': '6',
      'ar': '6',
    },
    '3ub8x3wi': {
      'en': 'Let’s improve your mood!',
      'ar': 'دعونا نحسن حالتك المزاجية!',
    },
    'bfyg3ce6': {
      'en': 'View all',
      'ar': 'عرض الكل',
    },
    'zz8ccjn8': {
      'en': 'Stage 1',
      'ar': 'المرحلة 1',
    },
    '8na9uh8v': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    '4bl92k2k': {
      'en': 'Stage 2',
      'ar': 'المرحلة 2',
    },
    'ysq3tlk6': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    '0x0gp97k': {
      'en': 'Stage 3',
      'ar': 'المرحلة 3',
    },
    'im0izcp1': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'ktksj90k': {
      'en': 'Stage 4',
      'ar': 'المرحلة 4',
    },
    '8zthri5y': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    '3dmlhm1p': {
      'en': 'Stage 5',
      'ar': 'المرحلة 5',
    },
    'uxnmh5hc': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    '29929ze0': {
      'en': 'Stage 6',
      'ar': 'المرحلة 6',
    },
    '0gxi5i81': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'dqmhy1tz': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // splashPage
  {
    '0zb6y2e9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // introPage
  {
    'b9xdzotk': {
      'en': 'Track your \nemotions, embrace, \nyour vibes',
      'ar': 'تتبع الخاص بك\nالعواطف، احتضان،\nالمشاعر الخاصة بك',
    },
    'i5pclpv9': {
      'en':
          'Understanding your inner world shining a light on your emotional landscape.',
      'ar': 'إن فهم عالمك الداخلي يسلط الضوء على مشهدك العاطفي.',
    },
    'hmofciav': {
      'en': 'Mood matters \nhow tracking your \nfeelings fuels action.',
      'ar': 'المزاج مهم\nكيفية تتبع الخاص بك\nالمشاعر تغذي العمل.',
    },
    'l8ibwtn6': {
      'en':
          'Understanding your inner world shining a light on your emotional landscape.',
      'ar': 'إن فهم عالمك الداخلي يسلط الضوء على مشهدك العاطفي.',
    },
    'c34b61nv': {
      'en': 'Energy high\nfive! feeling motivated \nand ready to conquer.',
      'ar': 'الطاقة عالية\nخمسة! الشعور بالتحفيز\nوعلى استعداد للتغلب.',
    },
    'r62d44d7': {
      'en':
          'Understanding your inner world shining a light on your emotional landscape.',
      'ar': 'إن فهم عالمك الداخلي يسلط الضوء على مشهدك العاطفي.',
    },
    'na6rwfjj': {
      'en': '',
      'ar': '',
    },
    'tgbewzcs': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // loginPage
  {
    'jt72v0jb': {
      'en': 'Log in',
      'ar': 'تسجيل الدخول',
    },
    'stiieh5o': {
      'en': 'Log in to take control of your account.',
      'ar': 'قم بتسجيل الدخول لتتمكن من التحكم بحسابك.',
    },
    '5279xvqv': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'n1x59r0h': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'tscngesj': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '9uzoc1mt': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    '94mvzhij': {
      'en': 'Forgot password?',
      'ar': 'هل نسيت كلمة السر؟',
    },
    'aey4x58y': {
      'en': 'or continue with',
      'ar': 'أو الاستمرار مع',
    },
    'td1rcq3j': {
      'en': 'Google ',
      'ar': 'جوجل',
    },
    'axfvcjeo': {
      'en': 'Facebook',
      'ar': 'فيسبوك',
    },
    'moz2uhxr': {
      'en': 'Please enter valid email address.',
      'ar': 'الرجاء إدخال عنوان بريد إلكتروني صالح.',
    },
    'vkxkmg70': {
      'en': 'Please enter a valid email address',
      'ar': 'يرجى إدخال عنوان بريد إلكتروني صالح',
    },
    'haxbgeil': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '33z0lt9w': {
      'en': 'Please enter a valid password',
      'ar': 'الرجاء إدخال كلمة السر الصحيحة',
    },
    '9whycs03': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'yosyn6rz': {
      'en': 'Don’t have an account? ',
      'ar': 'ليس لديك حساب؟',
    },
    '28j1q76a': {
      'en': 'sign up.',
      'ar': 'اشتراك.',
    },
    'ri7drh28': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // forgotPage
  {
    'bntfhavr': {
      'en':
          'Enter your email for the verification process. we will send 6 digits code to your email.',
      'ar':
          'أدخل بريدك الإلكتروني لعملية التحقق. سنرسل رمزًا مكونًا من 6 أرقام إلى بريدك الإلكتروني.',
    },
    'pygrjuaz': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'jydwvpg3': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'k0na8zdx': {
      'en': 'Please enter a valid email address',
      'ar': 'يرجى إدخال عنوان بريد إلكتروني صالح',
    },
    '5wpaw9dw': {
      'en': 'Please enter a valid email address',
      'ar': 'يرجى إدخال عنوان بريد إلكتروني صالح',
    },
    'b84fsio6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'vfijij1a': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // verificationPage
  {
    '6oc8302n': {
      'en':
          'Enter your email for the verification process. we will send 6 digits code to your email.',
      'ar':
          'أدخل بريدك الإلكتروني لعملية التحقق. سنرسل رمزًا مكونًا من 6 أرقام إلى بريدك الإلكتروني.',
    },
    'zizu8rt0': {
      'en': 'Code sent to  ',
      'ar': 'تم إرسال الرمز إلى',
    },
    'tfqfyp7c': {
      'en': 'ronaldrichards@gmail.com',
      'ar': 'رونالدريتشاردز@gmail.com',
    },
    'zhzofhdb': {
      'en': 'Don’t receive an code?',
      'ar': 'لا تتلقى رمزا؟',
    },
    'ywna0l63': {
      'en': ' resend now.',
      'ar': 'إعادة إرسال الآن.',
    },
    'vadfidbq': {
      'en': 'Please enter  OTP',
      'ar': 'الرجاء إدخال كلمة المرور لمرة واحدة',
    },
    'yqxqbkhs': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // resetPasswordPage
  {
    's1x90liw': {
      'en':
          'Enter your email for the verification process. we will send 6 digits code to your email.',
      'ar':
          'أدخل بريدك الإلكتروني لعملية التحقق. سنرسل رمزًا مكونًا من 6 أرقام إلى بريدك الإلكتروني.',
    },
    '24yqntej': {
      'en': 'New password',
      'ar': 'كلمة المرور الجديدة',
    },
    '38uip29r': {
      'en': 'New password',
      'ar': 'كلمة المرور الجديدة',
    },
    '8ethesdc': {
      'en': 'Confirm password',
      'ar': 'تأكيد كلمة المرور',
    },
    'gm4sbu8l': {
      'en': 'Confirm password',
      'ar': 'تأكيد كلمة المرور',
    },
    'go42smj5': {
      'en': 'Please enter a new password',
      'ar': 'الرجاء إدخال كلمة مرور جديدة',
    },
    '1v427qhp': {
      'en': 'Please enter a valid email address',
      'ar': 'يرجى إدخال عنوان بريد إلكتروني صالح',
    },
    '6o7qd13t': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '1kw2cezx': {
      'en': 'Please enter a confirm password',
      'ar': 'الرجاء إدخال كلمة المرور المؤكدة',
    },
    'e46l4fra': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '0ay64xhg': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // signupPage
  {
    'l02ixm19': {
      'en': 'Sign up',
      'ar': 'اشتراك',
    },
    '3oee613o': {
      'en': 'Log in to take control of your account.',
      'ar': 'قم بتسجيل الدخول لتتمكن من التحكم بحسابك.',
    },
    '1k85cn73': {
      'en': 'First name',
      'ar': 'الاسم الأول',
    },
    '8epkh18b': {
      'en': 'First name',
      'ar': 'الاسم الأول',
    },
    'til439l4': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'fdbmta6l': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    '4tytq4nh': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    'tqdiezwy': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    '0o34o97f': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'wpt8gsci': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'r3a2w20s': {
      'en': 'or continue with',
      'ar': 'أو الاستمرار مع',
    },
    'ftmydd4y': {
      'en': 'Google ',
      'ar': 'جوجل',
    },
    'm93ol3nc': {
      'en': 'Facebook',
      'ar': 'فيسبوك',
    },
    '2goczrl4': {
      'en': 'Please enter first name.',
      'ar': 'الرجاء إدخال الاسم الأول.',
    },
    'xxq5tjnv': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'zxdashl7': {
      'en': 'Please enter email address.',
      'ar': 'الرجاء إدخال عنوان البريد الإلكتروني.',
    },
    '08truis3': {
      'en': 'Please enter valid email address.',
      'ar': 'الرجاء إدخال عنوان بريد إلكتروني صالح.',
    },
    'bfzy6ga7': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'n9f8v1ei': {
      'en': 'Please enter phone number.',
      'ar': 'الرجاء إدخال رقم الهاتف.',
    },
    'fm5ocma5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'gf68cjww': {
      'en': 'Please enter password.',
      'ar': 'الرجاء إدخال كلمة المرور.',
    },
    'j3t8n7os': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '6lybogfu': {
      'en': 'Already have an account? ',
      'ar': 'هل لديك حساب؟',
    },
    '7seuq4pb': {
      'en': ' sign in.',
      'ar': 'تسجيل الدخول.',
    },
    '96gwammh': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // letsimProveYourMoodPage
  {
    'r9d997lp': {
      'en': 'Let’s improve your mood',
      'ar': 'دعونا نحسن حالتك المزاجية',
    },
    'y1eomps1': {
      'en': 'Stage 1',
      'ar': 'المرحلة 1',
    },
    's1dxijdh': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'pfypuqcg': {
      'en': 'Stage 2',
      'ar': 'المرحلة 2',
    },
    '6pyelggi': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    '9o1h3xbs': {
      'en': 'Stage 3',
      'ar': 'المرحلة 3',
    },
    'aq4z5vmn': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'j218ptwa': {
      'en': 'Stage 4',
      'ar': 'المرحلة 4',
    },
    'mp0jmwga': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'xhohcwhd': {
      'en': 'Stage 5',
      'ar': 'المرحلة 5',
    },
    'l1lff4qh': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    '7ttzud6y': {
      'en': 'Stage 6',
      'ar': 'المرحلة 6',
    },
    'kivdicgn': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'xh6akq0h': {
      'en': 'Stage 7',
      'ar': 'المرحلة 7',
    },
    'is51m2io': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'a5bjzprn': {
      'en': 'Stage 8',
      'ar': 'المرحلة 8',
    },
    '485w8vgl': {
      'en': '1st stage (-2h Avg)',
      'ar': 'المرحلة الأولى (-2 ساعة متوسط)',
    },
    'msp7da6x': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // staticsPage
  {
    'mbhpxw3w': {
      'en': 'Statics',
      'ar': 'علم الإحصاء',
    },
    'nfellqow': {
      'en': 'Hormone level',
      'ar': 'مستوى الهرمون',
    },
    'p7vhla97': {
      'en': 'Mood meter',
      'ar': 'مقياس المزاج',
    },
    'c5xv6ht0': {
      'en': 'Productivity',
      'ar': 'إنتاجية',
    },
    '9uh239bp': {
      'en': 'Mood meter',
      'ar': 'مقياس المزاج',
    },
    'o26rknwt': {
      'en': 'When you planning a back workout, you\'re probably envisioning',
      'ar': 'عندما تخطط لتمرين الظهر، فمن المحتمل أنك تتخيل',
    },
    'xap30wrv': {
      'en': 'Statics',
      'ar': 'علم الإحصاء',
    },
  },
  // monthlyStatsPage
  {
    '4wml718o': {
      'en': 'Monthly stats',
      'ar': 'احصائيات شهرية',
    },
    'hvpdpt3d': {
      'en': 'Emotions are beautiful',
      'ar': 'العواطف جميلة',
    },
    'a10ppkku': {
      'en': 'View all',
      'ar': 'عرض الكل',
    },
    'vkv3fnbn': {
      'en': 'Sun',
      'ar': 'شمس',
    },
    'okx55p50': {
      'en': '1',
      'ar': '1',
    },
    '8nw7zwl3': {
      'en': 'Mon',
      'ar': 'الاثنين',
    },
    'enyca9ps': {
      'en': '2',
      'ar': '2',
    },
    'j6kf6n9k': {
      'en': 'Tue',
      'ar': 'الثلاثاء',
    },
    'ybqu9jnw': {
      'en': '3',
      'ar': '3',
    },
    'extgies1': {
      'en': 'Wed',
      'ar': 'تزوج',
    },
    'l3fjqf1l': {
      'en': '4',
      'ar': '4',
    },
    '910lyrh3': {
      'en': 'Thu',
      'ar': 'الخميس',
    },
    'an5n3v7j': {
      'en': '5',
      'ar': '5',
    },
    'j2jmm3ye': {
      'en': 'Fri',
      'ar': 'الجمعة',
    },
    'f7z1rcw4': {
      'en': '6',
      'ar': '6',
    },
    'zlff062a': {
      'en': 'Sleep quality',
      'ar': 'نوعية النوم',
    },
    '6g606drq': {
      'en': '4.5',
      'ar': '4.5',
    },
    'et1hp9iz': {
      'en': 'hours/daily',
      'ar': 'ساعات / يوميا',
    },
    '4nt4de1h': {
      'en': 'Stress level',
      'ar': 'مستوى التوتر',
    },
    '05gttsos': {
      'en': 'Insomniac',
      'ar': 'بالأرق',
    },
    'sfcq9wbl': {
      'en': ' (-5h Avg)',
      'ar': '(-5 ساعات متوسط)',
    },
    '9e8rogmz': {
      'en': 'Anxiety',
      'ar': 'قلق',
    },
    'v966bf8v': {
      'en': 'Level 2',
      'ar': 'المستوي 2',
    },
    'g6isetnv': {
      'en': '(Need stress relief)',
      'ar': '(تحتاج إلى تخفيف التوتر)',
    },
    'on4t8mjb': {
      'en': 'Daily prayer',
      'ar': 'الصلاة اليومية',
    },
    'ttadv7cz': {
      'en': '4 ',
      'ar': '4',
    },
    'yu33rv7l': {
      'en': 'times (Avg)',
      'ar': 'مرات (متوسط)',
    },
    's2lr0bdm': {
      'en': 'Mind fulness',
      'ar': 'تركيز كامل للذهن',
    },
    '7flgr6ut': {
      'en': 'Level 1',
      'ar': 'المستوى 1',
    },
    'dua76zjk': {
      'en': '(Based on all data)',
      'ar': '(بناء على كافة البيانات)',
    },
    'ttfddm22': {
      'en': 'Mood track',
      'ar': 'المسار المزاجي',
    },
    'n31roza2': {
      'en': 'Basic stress',
      'ar': 'الإجهاد الأساسي',
    },
    'gbz1ulds': {
      'en': '5',
      'ar': '5',
    },
    'na0txqit': {
      'en': 'Kcal',
      'ar': 'سعر حراري',
    },
    'giuz0kq2': {
      'en': '6',
      'ar': '6',
    },
    'gmlpd7er': {
      'en': 'Kcal',
      'ar': 'سعر حراري',
    },
    'itqmlxzj': {
      'en': '7',
      'ar': '7',
    },
    'up2rlvdj': {
      'en': 'Kcal',
      'ar': 'سعر حراري',
    },
    'c02f5w55': {
      'en': '8',
      'ar': '8',
    },
    'dkwe7mqy': {
      'en': 'Kcal',
      'ar': 'سعر حراري',
    },
    'p21qcp4x': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // reviewSummaryPage
  {
    'f93o031u': {
      'en': 'Premium',
      'ar': 'غالي',
    },
    '9enliug4': {
      'en': '\$12.00/',
      'ar': '12.00 دولار/',
    },
    '4z49w2ey': {
      'en': 'month',
      'ar': 'شهر',
    },
    'gmdliops': {
      'en': 'Applicable for 24 hrs only',
      'ar': 'العرض ساري لمدة 24 ساعة فقط',
    },
    'xvac6u93': {
      'en': 'Daily 50 Mood tracking feature',
      'ar': 'ميزة تتبع الحالة المزاجية 50 يومية',
    },
    'tm3y7hci': {
      'en': 'Remove ads',
      'ar': 'ازالة الاعلانات',
    },
    'tg629adi': {
      'en': 'Access full app feature',
      'ar': 'الوصول إلى ميزة التطبيق الكاملة',
    },
    'qam7jqh2': {
      'en': 'Amount',
      'ar': 'كمية',
    },
    'o004betx': {
      'en': '\$12.00',
      'ar': '12.00 دولارًا',
    },
    '6fyvzipx': {
      'en': 'Tax',
      'ar': 'ضريبة',
    },
    'pkrb69uq': {
      'en': '\$2.00',
      'ar': '2.00 دولار',
    },
    'cperupql': {
      'en': 'Total',
      'ar': 'المجموع',
    },
    'wqv6s2oa': {
      'en': '\$14.00',
      'ar': '14.00 دولارًا',
    },
    'zf2m0wni': {
      'en': 'Paypal',
      'ar': 'باي بال',
    },
    '2d9a5ack': {
      'en': 'Change',
      'ar': 'يتغير',
    },
    'dcv2ad7w': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // plansPage
  {
    'uvgglstu': {
      'en': 'Standard',
      'ar': 'معيار',
    },
    '7p0m2uq3': {
      'en': 'Daily 20 Mood tracking feature',
      'ar': 'ميزة تتبع الحالة المزاجية 20 يومية',
    },
    'nas4az0t': {
      'en': 'Chat feature remove after 24 hours',
      'ar': 'تتم إزالة ميزة الدردشة بعد 24 ساعة',
    },
    'tteipbhi': {
      'en': 'Premium',
      'ar': 'غالي',
    },
    'g7pjtg3q': {
      'en': '\$12.00/',
      'ar': '12.00 دولار/',
    },
    '7av0xxtb': {
      'en': 'month',
      'ar': 'شهر',
    },
    'z1mdrrm5': {
      'en': 'Applicable for 24 hrs only',
      'ar': 'العرض ساري لمدة 24 ساعة فقط',
    },
    'mdwdq21n': {
      'en': 'Daily 50 Mood tracking feature',
      'ar': 'ميزة تتبع الحالة المزاجية 50 يومية',
    },
    'a8ifyeuj': {
      'en': 'Remove ads',
      'ar': 'ازالة الاعلانات',
    },
    'dgkhqekv': {
      'en': 'Yearly',
      'ar': 'سنوي',
    },
    'ywdqdyw7': {
      'en': '\$20.00/',
      'ar': '20.00 دولار/',
    },
    '1mw7u6qf': {
      'en': 'month',
      'ar': 'شهر',
    },
    'g710w18y': {
      'en': 'Applicable for 24 hrs only',
      'ar': 'العرض ساري لمدة 24 ساعة فقط',
    },
    '8dhcsovv': {
      'en': 'Daily 50 Mood tracking feature',
      'ar': 'ميزة تتبع الحالة المزاجية 50 يومية',
    },
    'b8e7pstz': {
      'en': 'Remove ads',
      'ar': 'ازالة الاعلانات',
    },
    '3vhwmu0m': {
      'en': 'Access full app feature',
      'ar': 'الوصول إلى ميزة التطبيق الكاملة',
    },
    'ssjghtl4': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // termsAndConditionPage
  {
    '0yk82iy8': {
      'en': '1.  Agreement of terms',
      'ar': '1. اتفاقية الشروط',
    },
    'hyg3tuk2': {
      'en':
          'Duis tristique diam nunc. Sed at tincidunt orci. Mauris eget congue leo. Cras varius at ante vitae convallis. Duis semper magna nec tortor tincidunt, id tincidunt quam blandit. Vivamus vehicula dictum magna quis eleifend. Fusce ac odio ac nibh tempus euismod. Nullam bibendum velit et ex facilisis maximus. Donec vesed commodo. Vivamus sollicitudin risus quam',
      'ar':
          'Duis tristique diam nunc. سيد في tincidunt orci. موريس يتزوج ليو. Cras varius في ante vitae convallis. Duis semper magna nec tortor tincidunt، id tincidunt quam blandit. Vivamus vehicula dictum magna quis eleifend. Fusce ac odio ac nibh tempus euismod. Nullam bibendum velit et ex facilisis maximus. دونك كان كومودو. Vivamus sollicitudin risus quam',
    },
    'qzaapnme': {
      'en': '2.  Terms of services',
      'ar': '2. شروط الخدمات',
    },
    'qh6hsii1': {
      'en':
          'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release.',
      'ar':
          'ببساطة، نص وهمي للطباعة وصناعة أدوات الطباعة. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لقد صمدت ليس فقط لخمسة قرون، بل قفزت أيضًا إلى التنضيد الإلكتروني، وبقيت دون تغيير بشكل أساسي. لقد انتشر في الستينيات مع الإصدار.',
    },
    'w4348g2t': {
      'en': '3.  Condition of use',
      'ar': '3. حالة الاستخدام',
    },
    'bfvwk7g1': {
      'en':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam maximus mollis nisl quis facilisis. Integer fermentum commodo nibh. Ut mollis tincidunt hendrerit. Duis ipsum velit, maximus sed commodo imperdiet, dapibus id velit. Nullam in maximus enim. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae in orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus. Maecenas egestas eu ligula sed commodo. Vivamus sollicitudin risus quam Maecenas egestas eu ligula sed commodo. Vivamus sollicitudin risus quam',
      'ar':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam Maximus mollis nisl quis facilisis. عدد صحيح الخميرة كومودو نيبه. Ut mollis tincidunt هندريريت. Duis ipsum velit، Maximus sed commodo impdiet، dapibus id velit. نولام في مكسيموس إنيم. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae في orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus. Maecenas egestas eu ligula sed commodo. Vivamus sollicitudin risus quam Maecenas egestas eu ligula sed commodo. Vivamus sollicitudin risus quam',
    },
    'f0yiok5e': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // privacyPolicyPage
  {
    'jgysdty8': {
      'en': '1. Types of data we collect',
      'ar': '1. أنواع البيانات التي نجمعها',
    },
    'l1wwqx64': {
      'en':
          'Duis tristique diam nunc. Sed at tincidunt orci. Mauris eget congue leo. Cras varius at ante vitae convallis. Duis semper magna nec tortor tincidunt, id tincidunt quam blandit. Vivamus vehicula dictum magna quis eleifend. Fusce ac odio ac nibh tempus euismod. ',
      'ar':
          'Duis tristique diam nunc. سيد في tincidunt orci. موريس يتزوج ليو. Cras varius في ante vitae convallis. Duis semper magna nec tortor tincidunt، id tincidunt quam blandit. Vivamus vehicula dictum magna quis eleifend. Fusce ac odio ac nibh tempus euismod.',
    },
    'p973rhj9': {
      'en': '2. Use of your personal data ',
      'ar': '2. استخدام بياناتك الشخصية',
    },
    'ti2u3m9o': {
      'en':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam maximus mollis nisl quis facilisis. Integer fermentum commodo nibh. Ut mollis tincidunt hendrerit. Duis ipsum velit, maximus sed commodo imperdiet, dapibus id velit. Nullam in maximus enim. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. ',
      'ar':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam Maximus mollis nisl quis facilisis. عدد صحيح الخميرة كومودو نيبه. Ut mollis tincidunt هندريريت. Duis ipsum velit، Maximus sed commodo impdiet، dapibus id velit. نولام في مكسيموس إنيم. Pellentesque vulputate nisi sit amet lacus pulvinar finibus.',
    },
    'j16dtze6': {
      'en': '3.Disclosure of your personal data',
      'ar': '3. الكشف عن بياناتك الشخصية',
    },
    'ijag5esu': {
      'en':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam maximus mollis nisl quis facilisis. Integer fermentum commodo nibh. Ut mollis tincidunt hendrerit. Duis ipsum velit, maximus sed commodo imperdiet, dapibus id velit. Nullam in maximus enim. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae in orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus. ',
      'ar':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam Maximus mollis nisl quis facilisis. عدد صحيح الخميرة كومودو نيبه. Ut mollis tincidunt هندريريت. Duis ipsum velit، Maximus sed commodo impdiet، dapibus id velit. نولام في مكسيموس إنيم. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae في orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus.',
    },
    'nrevkwvj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // aboutUsPage
  {
    '3y7y8oaw': {
      'en': '1. Types of data we collect',
      'ar': '1. أنواع البيانات التي نجمعها',
    },
    'evna2apd': {
      'en':
          'Duis tristique diam nunc. Sed at tincidunt orci. Mauris eget congue leo. Cras varius at ante vitae convallis. Duis semper magna nec tortor tincidunt, id tincidunt quam blandit. Vivamus vehicula dictum magna quis eleifend. Fusce ac odio ac nibh tempus euismod. ',
      'ar':
          'Duis tristique diam nunc. سيد في tincidunt orci. موريس يتزوج ليو. Cras varius في ante vitae convallis. Duis semper magna nec tortor tincidunt، id tincidunt quam blandit. Vivamus vehicula dictum magna quis eleifend. Fusce ac odio ac nibh tempus euismod.',
    },
    'z5q81lcu': {
      'en': '2. Use of your personal data ',
      'ar': '2. استخدام بياناتك الشخصية',
    },
    'zu5k0ojt': {
      'en':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam maximus mollis nisl quis facilisis. Integer fermentum commodo nibh. Ut mollis tincidunt hendrerit. Duis ipsum velit, maximus sed commodo imperdiet, dapibus id velit. Nullam in maximus enim. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. ',
      'ar':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam Maximus mollis nisl quis facilisis. عدد صحيح الخميرة كومودو نيبه. Ut mollis tincidunt هندريريت. Duis ipsum velit، Maximus sed commodo impdiet، dapibus id velit. نولام في مكسيموس إنيم. Pellentesque vulputate nisi sit amet lacus pulvinar finibus.',
    },
    '2jfo05mu': {
      'en': '3.Disclosure of your personal data',
      'ar': '3. الكشف عن بياناتك الشخصية',
    },
    'wt786je2': {
      'en':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam maximus mollis nisl quis facilisis. Integer fermentum commodo nibh. Ut mollis tincidunt hendrerit. Duis ipsum velit, maximus sed commodo imperdiet, dapibus id velit. Nullam in maximus enim. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae in orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus. ',
      'ar':
          'Sed sollicitudin nisi mollis libero consectetur rutrum. Nam Maximus mollis nisl quis facilisis. عدد صحيح الخميرة كومودو نيبه. Ut mollis tincidunt هندريريت. Duis ipsum velit، Maximus sed commodo impdiet، dapibus id velit. نولام في مكسيموس إنيم. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae في orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus.',
    },
    'xbaot6gb': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // changePasswordPage
  {
    'dk1amewg': {
      'en':
          'Change your password today it\'s time to take back control of your online security',
      'ar':
          'قم بتغيير كلمة المرور الخاصة بك اليوم، فقد حان الوقت لاستعادة السيطرة على أمانك عبر الإنترنت',
    },
    'od40ejpz': {
      'en': 'New password',
      'ar': 'كلمة المرور الجديدة',
    },
    'lxuj1y64': {
      'en': 'New password',
      'ar': 'كلمة المرور الجديدة',
    },
    'rv776fbd': {
      'en': 'Confirm password',
      'ar': 'تأكيد كلمة المرور',
    },
    'tr8r9yp6': {
      'en': 'Confirm password',
      'ar': 'تأكيد كلمة المرور',
    },
    'eafm1rw1': {
      'en': 'Please enter a new password',
      'ar': 'الرجاء إدخال كلمة مرور جديدة',
    },
    'nuuohr1r': {
      'en': 'Please enter a valid email address',
      'ar': 'يرجى إدخال عنوان بريد إلكتروني صالح',
    },
    'xfc68yv5': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'n20p6b83': {
      'en': 'Please enter a confirm password',
      'ar': 'الرجاء إدخال كلمة المرور المؤكدة',
    },
    'c3zue6g6': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'ig6nky39': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // securitySettingsPage
  {
    'x50zls0e': {
      'en': 'Change password',
      'ar': 'تغيير كلمة المرور',
    },
    'hehtxa1h': {
      'en': 'Face recognition',
      'ar': 'تمييز الوجوه',
    },
    '5c1bgefx': {
      'en': 'Fingerprint',
      'ar': 'بصمة',
    },
    '7pr2g5fb': {
      'en': '2 step verification',
      'ar': 'التحقق بخطوتين',
    },
    'qhwydrcj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // settingPage
  {
    'egn5iy16': {
      'en': 'Security settings',
      'ar': 'اعدادات الامان',
    },
    '9tu4ow08': {
      'en': 'About us',
      'ar': 'معلومات عنا',
    },
    't5hkurot': {
      'en': 'Privacy policy',
      'ar': 'سياسة الخصوصية',
    },
    'qr96wgwp': {
      'en': 'Terms & condition',
      'ar': 'الشروط والأحكام',
    },
    'd0ql84lu': {
      'en': 'Delete account',
      'ar': 'حذف الحساب',
    },
    '1zbugfgv': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // paymentMethodPage
  {
    'jupkaz29': {
      'en': 'Payment method',
      'ar': 'طريقة الدفع او السداد',
    },
    'rpmygf0s': {
      'en': 'Payment method',
      'ar': 'طريقة الدفع او السداد',
    },
    '2ivx0mok': {
      'en': 'Paypal',
      'ar': 'باي بال',
    },
    'rytbiae4': {
      'en': 'Visa',
      'ar': 'تأشيرة',
    },
    'n8m9cn1h': {
      'en': 'Google pay',
      'ar': 'جوجل تدفع',
    },
    '2waidoad': {
      'en': 'Apple pay',
      'ar': 'أبل تدفع',
    },
    'p6vsw5aa': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // dailyStatsPage
  {
    'lmxlv5d6': {
      'en': 'Daily stats',
      'ar': 'احصائيات يومية',
    },
    '3e91cdlz': {
      'en': 'Present body stats',
      'ar': 'احصائيات الجسم الحالية',
    },
    'wlcq71w9': {
      'en': 'Workout',
      'ar': 'اكتشف - حل',
    },
    'xnrz4qtg': {
      'en': '85',
      'ar': '85',
    },
    'crdos6pv': {
      'en': 'Activity',
      'ar': 'نشاط',
    },
    'dhonz7i0': {
      'en': '68',
      'ar': '68',
    },
    '1bbn1ic9': {
      'en': 'Mood tracker',
      'ar': 'تعقب المزاج',
    },
    'idlpa6ko': {
      'en': '80',
      'ar': '80',
    },
    'a02sdk2z': {
      'en': 'Recent activity',
      'ar': 'النشاط الأخير',
    },
    'ka4whf2n': {
      'en': 'Running',
      'ar': 'جري',
    },
    'x5wj8b2m': {
      'en': '221',
      'ar': '221',
    },
    'n2lhbsgx': {
      'en': 'Cycling',
      'ar': 'ركوب الدراجات',
    },
    '2laruks0': {
      'en': '21',
      'ar': '21',
    },
    'tbmx9wei': {
      'en': 'Stats',
      'ar': 'احصائيات',
    },
  },
  // chatPage
  {
    'nem4sxa4': {
      'en': 'Chats',
      'ar': 'الدردشات',
    },
    'd25sz72u': {
      'en': 'Chats',
      'ar': 'الدردشات',
    },
    'btlmfn7e': {
      'en': 'Robert fox',
      'ar': 'روبرت فوكس',
    },
    'dyxmmef6': {
      'en': 'Hello, good morning',
      'ar': 'مرحبا صباح الخير',
    },
    'm84qnbfg': {
      'en': '22:00',
      'ar': '22:00',
    },
    'i5a7ha0v': {
      'en': 'Esther howard',
      'ar': 'استير هوارد',
    },
    '30wyjxij': {
      'en': 'Awesome',
      'ar': 'مذهل',
    },
    'dnr2j1dq': {
      'en': '22:00',
      'ar': '22:00',
    },
    'rzn8aykc': {
      'en': 'Leslie alexander',
      'ar': 'ليزلي الكسندر',
    },
    '92bdctms': {
      'en': 'How are you dude',
      'ar': 'كيف حالك يا صاح',
    },
    'qqribgxb': {
      'en': '22:00',
      'ar': '22:00',
    },
    'y67e3c5x': {
      'en': 'Ralph edwards',
      'ar': 'رالف إدواردز',
    },
    '2wto748f': {
      'en': 'What about you',
      'ar': 'ماذا عنك',
    },
    'ao4verev': {
      'en': '22:00',
      'ar': '22:00',
    },
    'sgykxi79': {
      'en': 'Jenny wilson',
      'ar': 'جيني ويلسون',
    },
    'ybtsmej3': {
      'en': 'I am fine',
      'ar': 'أنا بخير',
    },
    'q606col9': {
      'en': '22:00',
      'ar': '22:00',
    },
    '5nnoavoz': {
      'en': 'Guy hawkins',
      'ar': 'جاي هوكينز',
    },
    'aq7385wb': {
      'en': 'What are you doing',
      'ar': 'ماذا تفعل',
    },
    'uys3xlp5': {
      'en': '22:00',
      'ar': '22:00',
    },
    'ub71eywf': {
      'en': 'Guy hawkins',
      'ar': 'جاي هوكينز',
    },
    'awdwqdcn': {
      'en': 'What are you doing',
      'ar': 'ماذا تفعل',
    },
    'h8hdp9ii': {
      'en': '22:00',
      'ar': '22:00',
    },
    '9kmviefb': {
      'en': 'Calls',
      'ar': 'المكالمات',
    },
    'l2smbd3v': {
      'en': 'Robert fox',
      'ar': 'روبرت فوكس',
    },
    'x7yz5l2h': {
      'en': 'Hello, good morning',
      'ar': 'مرحبا صباح الخير',
    },
    'cn6dtlvv': {
      'en': 'Esther howard',
      'ar': 'استير هوارد',
    },
    'lojv160g': {
      'en': 'Awesome',
      'ar': 'مذهل',
    },
    'll8rs7g2': {
      'en': 'Leslie alexander',
      'ar': 'ليزلي الكسندر',
    },
    'i3r3m5sj': {
      'en': 'How are you dude',
      'ar': 'كيف حالك يا صاح',
    },
    'uoxjc2ul': {
      'en': 'Ralph edwards',
      'ar': 'رالف إدواردز',
    },
    '7b96l7v5': {
      'en': 'What about you',
      'ar': 'ماذا عنك',
    },
    'm3r2j2wq': {
      'en': 'Jenny wilson',
      'ar': 'جيني ويلسون',
    },
    'nxkfbokl': {
      'en': 'I am fine',
      'ar': 'أنا بخير',
    },
    'lzm2v3a7': {
      'en': 'Guy hawkins',
      'ar': 'جاي هوكينز',
    },
    'unfwl40d': {
      'en': 'What are you doing',
      'ar': 'ماذا تفعل',
    },
    '24ca26hf': {
      'en': 'Guy hawkins',
      'ar': 'جاي هوكينز',
    },
    'cf1ol6uq': {
      'en': 'What are you doing',
      'ar': 'ماذا تفعل',
    },
    '4o8fof20': {
      'en': 'Chat',
      'ar': 'محادثة',
    },
  },
  // chatDetailsPage
  {
    'ekh75bv4': {
      'en': 'Esther howard',
      'ar': 'استير هوارد',
    },
    'l08a40dz': {
      'en': 'Online',
      'ar': 'متصل',
    },
    'b2rj7q93': {
      'en': 'TODAY',
      'ar': 'اليوم',
    },
    'k9jgwn6z': {
      'en': 'Hi, esther 👋🏻',
      'ar': 'مرحبًا إستير 👋🏻',
    },
    'k8hn96cr': {
      'en':
          'I have problem in my Mood is natu\nrelly change to stress and dippress',
      'ar': 'لدي مشكلة في مزاجي ناتو\nريلي التغيير إلى الإجهاد وdipress',
    },
    'bf33chyw': {
      'en': '12.00 ',
      'ar': '12.00',
    },
    'wa373egu': {
      'en': 'Oh, right! let\'s see how today went',
      'ar': 'صحيح! دعونا نرى كيف ذهب اليوم',
    },
    'qwrchj4h': {
      'en': '12.00 ',
      'ar': '12.00',
    },
    '1nmox2vt': {
      'en':
          'I\'m feeling pretty chill. The sun was \nshining earlier, and I got some work',
      'ar':
          'أشعر بالبرد الشديد. كانت الشمس\nمشرقة في وقت سابق، وحصلت على بعض العمل',
    },
    'dkh56b50': {
      'en': '12.00 ',
      'ar': '12.00',
    },
    'gfna3y6e': {
      'en':
          'Sounds like a good day!  Is there anything \nspecific that contributed to your \npositive mood?',
      'ar':
          'يبدو وكأنه يوم جيد! هل يوجد أي شئ\nالمحددة التي ساهمت في الخاص بك\nمزاج ايجابي؟',
    },
    '3nqmz1xk': {
      'en': '12.00 ',
      'ar': '12.00',
    },
    'j6axwwke': {
      'en': 'Write a reply...',
      'ar': 'أكتب الرد...',
    },
    'hezve5jh': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // callDetailsPage
  {
    'fqp1kb5g': {
      'en': 'Esther howards',
      'ar': 'استير هواردز',
    },
    '33pmo082': {
      'en': '13:35 Min',
      'ar': '13:35 دقيقة',
    },
    't08rlncw': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // profilePage
  {
    'vtitwni4': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
    'abu955ba': {
      'en': 'Ronald richards',
      'ar': 'رونالد ريتشاردز',
    },
    '7ikuc802': {
      'en': 'ronaldrichards@gmail.com',
      'ar': 'رونالدريتشاردز@gmail.com',
    },
    'pjfshpta': {
      'en': 'Upgrade to pro!',
      'ar': 'التطور للاحترافية!',
    },
    'twx4hoxp': {
      'en': 'Enjoy all benefits without restrictions',
      'ar': 'استمتع بجميع المزايا دون قيود',
    },
    '9d3jb5k2': {
      'en': 'My profile',
      'ar': 'ملفي',
    },
    'a5ifwf36': {
      'en': 'My activity',
      'ar': 'نشاطي',
    },
    '07kdzxwh': {
      'en': 'Notification',
      'ar': 'إشعار',
    },
    'ywhn30jj': {
      'en': 'Payment method',
      'ar': 'طريقة الدفع او السداد',
    },
    'zgomwezn': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'a587euvg': {
      'en': 'Log out',
      'ar': 'تسجيل خروج',
    },
    'gy2s1158': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
    },
  },
  // myProfilePage
  {
    'an2lkjok': {
      'en': 'My profile',
      'ar': 'ملفي',
    },
    'l7tm80ye': {
      'en': 'Ronald richards',
      'ar': 'رونالد ريتشاردز',
    },
    '37o3nl0i': {
      'en': 'ronaldrichards@gmail.com',
      'ar': 'رونالدريتشاردز@gmail.com',
    },
    'ek2droyk': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'u5vvnfot': {
      'en': 'Ronald richards',
      'ar': 'رونالد ريتشاردز',
    },
    'jfwlisdy': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'humw8p9a': {
      'en': 'ronaldrichards@gmail.com',
      'ar': 'رونالدريتشاردز@gmail.com',
    },
    '2txsi6o1': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    'tsra5fa0': {
      'en': '(219) 555-0114',
      'ar': '(219) 555-0114',
    },
    'u275df1n': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // editProfilePage
  {
    't5un24nz': {
      'en': 'First name',
      'ar': 'الاسم الأول',
    },
    'ae1ufc4p': {
      'en': 'First name',
      'ar': 'الاسم الأول',
    },
    'd666e98m': {
      'en': 'Ronald richards',
      'ar': 'رونالد ريتشاردز',
    },
    'of3d5qlv': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'jmg10975': {
      'en': 'Email address',
      'ar': 'عنوان البريد الإلكتروني',
    },
    'y5mxkpqg': {
      'en': 'ronaldrichards@gmail.com',
      'ar': 'رونالدريتشاردز@gmail.com',
    },
    '95p24n29': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    '1z23y0zb': {
      'en': 'Phone number',
      'ar': 'رقم التليفون',
    },
    'gdgrjnh9': {
      'en': '(219) 555-0114',
      'ar': '(219) 555-0114',
    },
    'od5j6i74': {
      'en': 'Please enter full name',
      'ar': 'الرجاء إدخال الاسم الكامل',
    },
    '5okvzmg2': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'wj93116b': {
      'en': 'Please enter valid email address',
      'ar': 'الرجاء إدخال عنوان بريد إلكتروني صالح',
    },
    '6a0tf64f': {
      'en': 'Please enter valid email address',
      'ar': 'الرجاء إدخال عنوان بريد إلكتروني صالح',
    },
    '1de396su': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    'qxjz3tbe': {
      'en': 'Please enter phone number',
      'ar': 'الرجاء إدخال رقم الهاتف',
    },
    '7ds4p4hp': {
      'en': 'Please choose an option from the dropdown',
      'ar': 'يرجى اختيار خيار من القائمة المنسدلة',
    },
    '2odvk4mh': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // myActivityPage
  {
    'ise0lai3': {
      'en': 'Ronald richards',
      'ar': 'رونالد ريتشاردز',
    },
    'yqj6yc2w': {
      'en': 'Normal',
      'ar': 'طبيعي',
    },
    '17mi0tbx': {
      'en': 'Core',
      'ar': 'جوهر',
    },
    '8li7jw9l': {
      'en': 'Perfect',
      'ar': 'ممتاز',
    },
    'xe4b0qzi': {
      'en': 'Running',
      'ar': 'جري',
    },
    'v3ywy26c': {
      'en': '221',
      'ar': '221',
    },
    'c76h8opp': {
      'en': 'Cycling',
      'ar': 'ركوب الدراجات',
    },
    'u3u18l9s': {
      'en': '21',
      'ar': '21',
    },
    'tz8egh7z': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // notificationPage
  {
    '90fxpjjj': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // addNewCardPage
  {
    'z1splp2u': {
      'en':
          'Enter your card details. signal does not collect or store your personal information.',
      'ar':
          'أدخل تفاصيل بطاقتك. لا تقوم الإشارة بجمع أو تخزين معلوماتك الشخصية.',
    },
    '7g4wy5ui': {
      'en': 'Learn more.',
      'ar': 'يتعلم أكثر.',
    },
    'r5qq17vb': {
      'en': 'Card number',
      'ar': 'رقم البطاقة',
    },
    '3yeraojd': {
      'en': 'Enter your card number',
      'ar': 'أدخل رقم بطاقتك',
    },
    '9dk1q5ru': {
      'en': 'Expiry date',
      'ar': 'تاريخ الانتهاء',
    },
    'q4dbvkzj': {
      'en': 'MM/YY',
      'ar': 'مم / سنة',
    },
    '2l0v5xdz': {
      'en': 'CVC',
      'ar': 'رمز التحقق من البطاقة',
    },
    '00l7zdam': {
      'en': '123',
      'ar': '123',
    },
    '0a9mxwjr': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // plansPaymentMethodPage
  {
    '4hdl9g0m': {
      'en': 'Select payment method',
      'ar': 'اختار طريقة الدفع',
    },
    'mpz6ftzt': {
      'en': 'Paypal',
      'ar': 'باي بال',
    },
    'iy23wf19': {
      'en': 'Visa',
      'ar': 'تأشيرة',
    },
    'r0dsfxqp': {
      'en': 'Google pay',
      'ar': 'جوجل تدفع',
    },
    'mbeh9746': {
      'en': 'Apple pay',
      'ar': 'أبل تدفع',
    },
    'zxncd3l2': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // resetPasswordDialoge
  {
    'vefxww8i': {
      'en': 'Password reset successfully',
      'ar': 'تم إعادة تعيين كلمة المرور بنجاح',
    },
    'ddp1zesq': {
      'en':
          'You have successfully change your password. \nplease use your new password to log in ',
      'ar':
          'لقد قمت بتغيير كلمة المرور الخاصة بك بنجاح.\nيرجى استخدام كلمة المرور الجديدة لتسجيل الدخول',
    },
    'lhkkx1ry': {
      'en': 'Go to login',
      'ar': 'اذهب لتسجيل الدخول',
    },
  },
  // logoutDialoge
  {
    'l2kqxnbx': {
      'en': 'Are you sure want to logout?',
      'ar': 'هل أنت متأكد أنك تريد تسجيل الخروج؟',
    },
    '2ej30nwl': {
      'en': 'Cancel',
      'ar': 'يلغي',
    },
    'vtjm2894': {
      'en': 'Log out',
      'ar': 'تسجيل خروج',
    },
  },
  // deleteAccountPage
  {
    '3bglax4s': {
      'en': 'Are you sure you want to \ndelete account ?',
      'ar': 'هل أنت متأكد أنك تريد\nحذف الحساب ؟',
    },
    'x5aoler5': {
      'en': 'No',
      'ar': 'لا',
    },
    'z592ex50': {
      'en': 'Yes',
      'ar': 'نعم',
    },
  },
  // Miscellaneous
  {
    '2rqh0lnz': {
      'en': '',
      'ar': '',
    },
    'fol2d9ki': {
      'en': '',
      'ar': '',
    },
    'ngkms144': {
      'en': '',
      'ar': '',
    },
    'runont5k': {
      'en': '',
      'ar': '',
    },
    'dt1av7vi': {
      'en': '',
      'ar': '',
    },
    '7catmvh4': {
      'en': '',
      'ar': '',
    },
    'f8oukajz': {
      'en': '',
      'ar': '',
    },
    '305p8t58': {
      'en': '',
      'ar': '',
    },
    '8sqehyzz': {
      'en': '',
      'ar': '',
    },
    'n194o73c': {
      'en': '',
      'ar': '',
    },
    'c9fntyst': {
      'en': '',
      'ar': '',
    },
    'f7aya4b6': {
      'en': '',
      'ar': '',
    },
    'w02cgfh9': {
      'en': '',
      'ar': '',
    },
    '4crkfnmr': {
      'en': '',
      'ar': '',
    },
    'jf28z90o': {
      'en': '',
      'ar': '',
    },
    '3w6t7g1x': {
      'en': '',
      'ar': '',
    },
    'icrfrg7k': {
      'en': '',
      'ar': '',
    },
    'eey9peup': {
      'en': '',
      'ar': '',
    },
    'f36iudcn': {
      'en': '',
      'ar': '',
    },
    '3yvwpgw4': {
      'en': '',
      'ar': '',
    },
    'tx0x23h1': {
      'en': '',
      'ar': '',
    },
    'lopceddm': {
      'en': '',
      'ar': '',
    },
    'jvxhviwt': {
      'en': '',
      'ar': '',
    },
    '1s13l50q': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
