import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  String getThemeAssetName(String name) {
    final brightness = Theme.of(this).brightness;

    return 'assets${brightness == Brightness.dark ? '/dark' : ''}/$name';
  }
}
