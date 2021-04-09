import 'dart:ui';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'lang_keys.dart';
part "en_us.dart";
part 'zh_cn.dart';
part 'zh_tw.dart';

class TranslationService extends Translations {
  static Locale get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys =>
      {'en_US': en_US, 'en': en_US, 'zh_CN': zh_CN, 'zh': zh_CN, 'zh_TW': zh_TW};
}

class LocaleConfig {
  final Locale locale;
  final Function localeString;

  const LocaleConfig(this.localeString, this.locale);
}

final langAuto = LocaleConfig(
    () => Lang.titleLanguagesAuto
        .trParams({'language': "${Get.deviceLocale.languageCode}${Get.deviceLocale.countryCode ?? ""}"}),
    Get.deviceLocale);

final allSupportLocales = [
  langAuto,
  langENUS,
  langZHCN,
  langZHTW
];

/// funcs of lang selected get/set
const String _keyUserLangSelected = "_keyUserLangSelected";

Future<int> getLangSelected() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userSelected = prefs.getInt(_keyUserLangSelected) ?? 0;
  if (userSelected > allSupportLocales.length - 1) userSelected = 0;
  return userSelected;
}

Future<bool> setLangSelected(int index) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setInt(_keyUserLangSelected, index);
}
