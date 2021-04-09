import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/components/code_widget.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleDetails.tr,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(Lang.routeManagementLine1.tr),
                  CodeWidget(
                    children: [
                      // "GetMaterialApp( // Before: MaterialApp(\n    home: MyHome(),\n)"
                      blueSpan(text: "GetMaterialApp"),
                      TextSpan(text: "( "),
                      codeHintSpan(text: "// Before: MaterialApp(\n"),
                      TextSpan(text: "    home"),
                      redSpan(text: ":"),
                      blueSpan(text: " MyHome"),
                      TextSpan(text: "(),\n)")
                    ],
                  ),
                  NormalText(Lang.routeManagementLine2.tr),
                  CodeWidget(
                    children: [
                      // Get.to(NextScreen());
                      blueSpan(text: "Get"),
                      TextSpan(text: "."),
                      purpleSpan(text: "to"),
                      TextSpan(text: "("),
                      blueSpan(text: "NextScreen"),
                      TextSpan(text: "());")
                    ],
                  ),
                  NormalText(
                      Lang.routeManagementLine3.tr),
                  CodeWidget(
                    children: [
                      // Get.toNamed('/details');
                      blueSpan(text: "Get"),
                      TextSpan(text: "."),
                      purpleSpan(text: "toNamed"),
                      TextSpan(text: "('/details');"),
                    ],
                  ),
                  NormalText(Lang.routeManagementLine4.tr),
                  CodeWidget(
                    children: [
                      // Get.toNamed('/details');
                      blueSpan(text: "Get"),
                      TextSpan(text: "."),
                      purpleSpan(text: "back"),
                      TextSpan(text: "();"),
                    ],
                  ),
                  NormalText(Lang.routeManagementLine5.tr),
                  CodeWidget(
                    children: [
                      // Get.toNamed('/details');
                      blueSpan(text: "Get"),
                      TextSpan(text: "."),
                      purpleSpan(text: "off"),
                      TextSpan(text: "("),
                      blueSpan(text: "NextScreen"),
                      TextSpan(text: "());"),
                    ],
                  ),
                  NormalText(Lang.routeManagementLine6.tr)
                ],
              ),
            ),
          ),
        ));
  }
}
