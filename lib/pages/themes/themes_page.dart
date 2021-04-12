import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/pages/themes/themes_controller.dart';

class ThemesPage extends GetView<ThemesController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ThemesController());
    return buildScaffold(
        title: Lang.titleThemes.tr,
        body: ListView(
          children: allThemes
              .asMap()
              .entries
              .map((e) => Obx(() => ListTile(
                    title: NormalText(
                      e.value.title(),
                      selectable: false,
                    ),
                    trailing: e.key == controller.themeSelected.value
                        ? Icon(
                            Icons.check,
                            color: Get.theme.accentColor,
                          )
                        : null,
                    onTap: () => controller.selectTheme(e.key),
                  )))
              .toList(),
        ));
  }
}
