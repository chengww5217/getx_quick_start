import 'package:get/get.dart';
import 'package:getx_quick_start/pages/home/details_page.dart';
import 'package:getx_quick_start/pages/home/home_page.dart';
import 'package:getx_quick_start/pages/not_found/not_found_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Home;

  static final notFoundPage = GetPage(name: NotFound, page: () => NotFoundPage());
  static final routes = [
    GetPage(name: Home, page: () => HomePage()),
    GetPage(name: Details, page: () => DetailsPage()),
    notFoundPage,
  ];
}
