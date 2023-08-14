import 'package:flutter/material.dart';
import 'package:flutter_localization_task/ui/home/home_page_screen.dart';
import 'package:get/get.dart';

import 'localization_service.dart';

void main() {
  runApp(MyApp());
  Get.put(LocalizationService());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Localization Example',
      translations: LocalizationService(),
      locale: const Locale('en', 'US'),
      home: HomePageScreen(),
    );
  }
}

