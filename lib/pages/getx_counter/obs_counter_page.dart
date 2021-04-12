import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/pages/getx_counter/counter_controller.dart';

class ObsCounterPage extends GetView<GetxCounterController> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleObsCounter.tr,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              width: Get.width,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 18),
              child: Text(Lang.contentGetxCounterPressed
                  .trParams({"counter": "${controller.counterObs}"})),
            )),
            ElevatedButton(
              onPressed: Get.back,
              child: Text(Lang.titleGetxCounter.tr),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          child: Icon(Icons.add),
        ));
  }
}
