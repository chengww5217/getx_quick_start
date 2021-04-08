import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/components/code_widget.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';

class DetailsPage extends StatelessWidget {
  final String title;

  DetailsPage({this.title = "Details Page"}) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: title,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(
                      "If you are going to use routes/snackbars/dialogs/bottomsheets without context, GetX is excellent for you too, just see it:\n\nAdd \"Get\" before your MaterialApp, turning it into GetMaterialApp"),
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
                  NormalText("Navigate to a new screen:"),
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
                      "Navigate to new screen with name. See more details on named routes here"),
                  CodeWidget(
                    children: [
                      // Get.toNamed('/details');
                      blueSpan(text: "Get"),
                      TextSpan(text: "."),
                      purpleSpan(text: "toNamed"),
                      TextSpan(text: "('/details');"),
                    ],
                  ),
                  NormalText(
                      "To close snackbars, dialogs, bottomsheets, or anything you would normally close with Navigator.pop(context);"),
                  CodeWidget(
                    children: [
                      // Get.toNamed('/details');
                      blueSpan(text: "Get"),
                      TextSpan(text: "."),
                      purpleSpan(text: "back"),
                      TextSpan(text: "();"),
                    ],
                  ),
                  NormalText(
                      "To go to the next screen and no option to go back to the previous screen (for use in SplashScreens, login screens, etc.)"),
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
                  NormalText("Noticed that you didn't have to use context to do any of these things? That's one of the biggest advantages of using Get route management. With this, you can execute all these methods from within your controller class, without worries.")
                ],
              ),
            ),
          ),
        ));
  }
}
