import 'package:flutter/material.dart';
import 'package:getx_quick_start/common/theme/theme.dart';

class NormalText extends StatelessWidget {
  final String text;
  final bool selectable;

  const NormalText(this.text, {this.selectable = true});

  @override
  Widget build(BuildContext context) {
    return selectable
        ? SelectableText(
            text,
            style: LightTheme.bodyTextStyle,
          )
        : Text(
            text,
            style: LightTheme.bodyTextStyle,
          );
  }
}
