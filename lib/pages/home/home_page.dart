import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Home Page",
        body: ListView(
          children: [
            ListTile(
              title: Text("Navigation to new screen"),
              onTap: () => Get.toNamed(Details),
            )
          ],
        ));
  }
}
