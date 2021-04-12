import 'package:flutter/material.dart';

AppBar buildAppBar(String title) => AppBar(
      title: Text(title),
      brightness: Brightness.dark,
    );

Scaffold buildScaffold(
        {String title, Widget body, Widget floatingActionButton}) =>
    Scaffold(
        appBar: title == null ? null : buildAppBar(title),
        body: body,
        floatingActionButton: floatingActionButton);
