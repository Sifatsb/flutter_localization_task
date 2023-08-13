import 'package:flutter/material.dart';
import 'package:flutter_localization_task/helper/widget.extensions.dart';
import 'package:get/get.dart';

import '../../localization_service.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});
  final LocalizationService _localizationService = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: const Text('Language Localization Task'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<Locale>(
              underline: const Text(''),
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              value: Get.locale,
              onChanged: (locale) {
                _localizationService.changeLocale(locale!);
              },
              items: _dropDownList,
            ),
            5.verticalSpacing,
            
            Container(
              padding: const EdgeInsets.all(10.0),
              width: Get.width*0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('name'.tr),
                  20.verticalSpacing,
                  Text('phone_number'.tr),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


List<DropdownMenuItem<Locale>> _dropDownList = const [
  DropdownMenuItem(
    value: Locale('en', 'US'),
    child: Text('English'),
  ),
  DropdownMenuItem(
    value: Locale('ar'),
    child: Text('العربية'),
  ),
  DropdownMenuItem(
    value: Locale('bn'),
    child: Text('বাংলা'),
  ),
];