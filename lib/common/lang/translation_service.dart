import 'dart:ui';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/lang/index.dart';

part "en_us.dart";
part 'zh_cn.dart';

class TranslationService extends Translations {
  static Locale get locale => Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': en_US,
    'en': en_US,
    'zh_CN': zh_CN,
    'zh': zh_CN
  };


}
