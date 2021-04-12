import 'package:getx_quick_start/common/lang/translation_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

final allThemes = [
  ThemeSelectBean(
      () => Lang.titleThemesAuto.trParams({
            "theme": Get.mediaQuery.platformBrightness == Brightness.dark
                ? Lang.titleThemesDark.tr
                : Lang.titleThemesLight.tr
          }),
      ThemeData.fallback(),
      ThemeMode.system),
  ThemeSelectBean(
      () => Lang.titleThemesLight.tr, ThemeData.light(), ThemeMode.light),
  ThemeSelectBean(
      () => Lang.titleThemesDark.tr, ThemeData.dark(), ThemeMode.dark),
];

class ThemesController extends GetxController {
  RxInt themeSelected;

  @override
  void onInit() {
    themeSelected = 0.obs;
    getThemeSelected().then((value) => themeSelected.value = value);
    super.onInit();
  }

  void selectTheme(int index) {
    if (index == themeSelected.value || index > allThemes.length - 1) return;
    setThemeSelected(index);
    themeSelected.value = index;
    Get.changeTheme(allThemes[index].theme);
    Get.changeThemeMode(allThemes[index].themeMode);
  }
}

typedef String StringFunc();

class ThemeSelectBean {
  final ThemeData theme;
  final StringFunc title;
  final ThemeMode themeMode;

  ThemeSelectBean(this.title, this.theme, this.themeMode);
}

/// funcs of theme selected get/set
const String _keyUserThemeSelected = "_keyUserThemeSelected";

Future<int> getThemeSelected() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userSelected = prefs.getInt(_keyUserThemeSelected) ?? 0;
  if (userSelected > allThemes.length - 1) userSelected = 0;
  return userSelected;
}

Future<bool> setThemeSelected(int index) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setInt(_keyUserThemeSelected, index);
}
