import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';
import 'package:getx_quick_start/common/lang/index.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleHome,
        body: ListView(
          children: [
            ListTile(
              title: NormalText(Lang.itemRouteManagement, selectable: false,),
              onTap: () => Get.toNamed(Details),
            ),
          ],
        ));
  }
}
