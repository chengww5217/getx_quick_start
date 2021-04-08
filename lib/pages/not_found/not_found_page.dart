import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/components/page_common.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        title: "Not Found",
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Center(
              child: Text(
                "Sorry we cannot find the page you visit.",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Spacer(),
            TextButton.icon(
                onPressed: () => Get.offAllNamed(Home),
                icon: Icon(
                  Icons.home,
                  size: Theme.of(context).textTheme.headline3.fontSize,
                ),
                label: Text("Back Home",
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline3.fontSize))),
            Spacer(
              flex: 8,
            ),
          ],
        ));
  }
}
