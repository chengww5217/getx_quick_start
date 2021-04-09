import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import './common/lang/translation_service.dart';

void main() {
  runApp(MyApp());
  getLangSelected().then((value) => Get.updateLocale(allSupportLocales[value].locale));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Lang.appName.tr,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      unknownRoute: AppPages.notFoundPage,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}

