import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';
import 'package:getx_quick_start/common/lang/index.dart';
import 'package:getx_quick_start/common/utils/language_select.dart';

class LanguagesPage extends StatefulWidget {
  @override
  _LanguagesPageState createState() => _LanguagesPageState();
}

class _LanguagesPageState extends State<LanguagesPage> {
  int langSelected = 0;

  @override
  void initState() {
    super.initState();
    getLangSelected()
        .then((value) => setState(() => langSelected = value.index));
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleLanguages.tr,
        body: ListView(
          children: _allLanguages
              .map(
                (e) => ListTile(
                  title: NormalText(
                    e.title,
                    selectable: false,
                  ),
                  trailing: langSelected == e.index
                      ? Icon(
                          Icons.check,
                          color: Get.theme.accentColor,
                        )
                      : null,
                  onTap: () {
                    if (langSelected == e.index) return;
                    LangSelectType lang = LangSelectType.values[e.index];
                    setLangSelected(lang);
                    setState(() {
                      langSelected = e.index;
                    });
                    Get.updateLocale(locales[e.index]);
                  },
                ),
              )
              .toList(),
        ));
  }
}

class _ListTitleInfo {
  final int index;
  final String title;

  const _ListTitleInfo(this.index, this.title);
}

final _allLanguages = [
  _ListTitleInfo(
      0,
      Lang.titleLanguagesAuto
          .trParams({'language': Get.deviceLocale.languageCode})),
  _ListTitleInfo(1, Lang.titleLanguagesENUS.tr),
  _ListTitleInfo(2, Lang.titleLanguagesZHCN.tr),
];
