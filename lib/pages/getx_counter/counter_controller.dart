import 'package:get/get.dart';

class GetxCounterController extends GetxController {
  var _counter = 0;
  int get counter => _counter;
  RxInt counterObs;

  @override
  void onInit() {
    counterObs = _counter.obs;
    super.onInit();
  }
  void increment() {
    _counter++;
    update();
  }
}
