import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum LangSelectType { auto, enUS, zhCN }

final locales = [Get.deviceLocale, Locale("en_US"), Locale("zh_CN")];

const String _keyUserLangSelected = "_keyUserLangSelected";

Future<LangSelectType> getLangSelected() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userSelected = prefs.getInt(_keyUserLangSelected) ?? 0;
  if (userSelected > LangSelectType.values.length - 1) userSelected = 0;
  return LangSelectType.values[userSelected];
}

Future<bool> setLangSelected(LangSelectType lang) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setInt(_keyUserLangSelected, lang.index);
}
