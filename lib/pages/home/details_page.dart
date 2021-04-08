import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/components/page_common.dart';

class DetailsPage extends StatelessWidget {
  final String title;

  DetailsPage({this.title = "Details Page"}): super(key: null);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(
      title: title
    );
  }

}
