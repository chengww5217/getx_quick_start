import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quick_start/common/theme/theme.dart';

class CodeWidget extends StatelessWidget {
  final List<InlineSpan> children;

  const CodeWidget({
    Key key,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .9 * Get.width,
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: LightTheme.codeBgColor,
      ),
      child: SelectableText.rich(
        TextSpan(children: children),
        style: LightTheme.bodyTextStyle,
      ),
    );
  }
}

TextSpan blueSpan({
  String text,
  List<InlineSpan> children,
  TextStyle style = LightTheme.blueTextStyle,
  GestureRecognizer recognizer,
  String semanticsLabel,
}) =>
    TextSpan(
      text: text,
      children: children,
      style: style,
      recognizer: recognizer,
      semanticsLabel: semanticsLabel,
    );

TextSpan purpleSpan({
  String text,
  List<InlineSpan> children,
  TextStyle style = LightTheme.purpleTextStyle,
  GestureRecognizer recognizer,
  String semanticsLabel,
}) =>
    TextSpan(
      text: text,
      children: children,
      style: style,
      recognizer: recognizer,
      semanticsLabel: semanticsLabel,
    );

TextSpan codeHintSpan({
  String text,
  List<InlineSpan> children,
  TextStyle style = LightTheme.codeHintTextStyle,
  GestureRecognizer recognizer,
  String semanticsLabel,
}) =>
    TextSpan(
      text: text,
      children: children,
      style: style,
      recognizer: recognizer,
      semanticsLabel: semanticsLabel,
    );

TextSpan redSpan({
  String text,
  List<InlineSpan> children,
  TextStyle style = LightTheme.codeRedTextStyle,
  GestureRecognizer recognizer,
  String semanticsLabel,
}) =>
    TextSpan(
      text: text,
      children: children,
      style: style,
      recognizer: recognizer,
      semanticsLabel: semanticsLabel,
    );



