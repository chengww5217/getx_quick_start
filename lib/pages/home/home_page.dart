import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleHome.tr,
        body: ListView(
          children: [
            buildListTitle(Lang.itemRouteManagement.tr, Details),
            buildListTitle(Lang.titleGetxCounter.tr, GetxCounter),
            buildListTitle(Lang.titleThemes.tr, Themes),
            buildListTitle(Lang.titleLanguages.tr, Languages),
          ],
        ));
  }

  ListTile buildListTitle(String text, String namedRoute) => ListTile(
        title: NormalText(
          text,
          selectable: false,
        ),
        onTap: () => Get.toNamed(namedRoute),
      );
}
