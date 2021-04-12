import 'package:get/get.dart';
import 'package:getx_quick_start/pages/getx_counter/getx_counter_page.dart';
import 'package:getx_quick_start/pages/getx_counter/obs_counter_page.dart';
import 'package:getx_quick_start/pages/home/details_page.dart';
import 'package:getx_quick_start/pages/home/home_page.dart';
import 'package:getx_quick_start/pages/not_found/not_found_page.dart';
import 'package:getx_quick_start/pages/settings/languages_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Home;

  static final notFoundPage = GetPage(name: NotFound, page: () => NotFoundPage());
  static final routes = [
    GetPage(name: Home, page: () => HomePage()),
    GetPage(name: Details, page: () => DetailsPage()),
    GetPage(name: Languages, page: () => LanguagesPage()),
    GetPage(name: GetxCounter, page: () => GetxCounterPage()),
    GetPage(name: ObsCounter, page: () => ObsCounterPage()),
    notFoundPage,
  ];
}
