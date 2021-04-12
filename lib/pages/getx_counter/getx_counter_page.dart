import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import 'package:getx_quick_start/pages/getx_counter/counter_controller.dart';

class GetxCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleGetxCounter.tr,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<GetxCounterController>(
                init: GetxCounterController(),
                builder: (controller) => Text(Lang.contentGetxCounterPressed
                    .trParams({"counter": controller.counter.toString()})),
              ),
              SizedBox(
                height: 18,
              ),
              TextButton(
                  onPressed: () => Get.toNamed(ObsCounter),
                  child: Text(Lang.titleObsCounter.tr))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.find<GetxCounterController>().increment(),
          child: Icon(Icons.add),
        ));
  }
}
