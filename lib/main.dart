import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import 'package:getx_quick_start/pages/themes/themes_controller.dart';
import './common/lang/translation_service.dart';

void main() {
  runApp(MyApp());
  // get the theme user selected and update the app's theme
  getThemeSelected().then((value) {
    Get.changeThemeMode(allThemes[value].themeMode);
    Get.changeTheme(allThemes[value].theme);
  });
  // get the language user selected and update the app's lang
  getLangSelected()
      .then((value) => Get.updateLocale(allSupportLocales[value].locale));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Lang.appName.tr,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      darkTheme: ThemeData.dark(),
      initialRoute: AppPages.INITIAL,
      unknownRoute: AppPages.notFoundPage,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
