import 'package:get/get.dart';

class GetxCounterController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    update();
  }
}
