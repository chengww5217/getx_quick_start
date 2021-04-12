import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/components/text_widget.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';

class LanguagesPage extends StatefulWidget {
  @override
  _LanguagesPageState createState() => _LanguagesPageState();
}

class _LanguagesPageState extends State<LanguagesPage> {
  int langSelected = 0;

  @override
  void initState() {
    super.initState();
    getLangSelected().then((value) => setState(() => langSelected = value));
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: Lang.titleLanguages.tr,
        body: ListView(
          children: buildListTitles(),
        ));
  }

  List<Widget> buildListTitles() {
    return allSupportLocales
        .asMap()
        .entries
        .map((entry) => ListTile(
              title: NormalText(
                entry.value.localeString(),
                selectable: false,
              ),
              trailing: langSelected == entry.key
                  ? Icon(
                      Icons.check,
                      color: Get.theme.accentColor,
                    )
                  : null,
              onTap: () {
                if (langSelected == entry.key) return;
                setLangSelected(entry.key);
                setState(() {
                  langSelected = entry.key;
                });
                Get.updateLocale(allSupportLocales[entry.key].locale);
              },
            ))
        .toList(growable: false);
  }
}
