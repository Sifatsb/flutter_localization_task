import 'dart:ui';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'name': 'Mahmud Hasan',
      'phone_number': 'Phone Number : 123456789',
    },
    'ar': {
      'name': 'محمود حسن',
      'phone_number': 'رقم التليفون : ١٢٣٤٥٦٧٨٩',
    },
    'bn': {
      'name': 'মাহমুদ হাসান',
      'phone_number': 'ফোন নাম্বার : ১২৩৪৫৬৭৮৯',
    },
  };

  void changeLocale(Locale locale) {
    Get.updateLocale(locale);
  }
}
