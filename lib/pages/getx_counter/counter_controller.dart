import 'package:get/get.dart';

class GetxCounterController extends GetxController {
  var _counter = 0;
  int get counter => counterObs?.value ?? 0;
  RxInt counterObs;

  @override
  void onInit() {
    counterObs = _counter.obs;
    super.onInit();
  }
  void increment() {
    counterObs.value ++;
    update();
  }
}
