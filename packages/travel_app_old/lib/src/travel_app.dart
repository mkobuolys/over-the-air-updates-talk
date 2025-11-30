// Copyright 2025 The Flutter Authors.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'travel_planner_page.dart';

/// The root widget for the travel application.
///
/// This widget sets up the [MaterialApp], which configures the overall theme,
/// title, and home page for the app. It serves as the main entry point for the
/// user interface.
class TravelAppOld extends StatelessWidget {
  /// Creates a new [TravelAppOld].
  const TravelAppOld({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agentic Travel Inc.',
      theme: theme.copyWith(
        bottomSheetTheme: const BottomSheetThemeData(
          constraints: BoxConstraints(maxWidth: 800.0),
        ),
      ),
      builder: (context, child) {
        final textScaler = const TextScaler.linear(2);

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: textScaler),
          child: child!,
        );
      },
      home: const TravelPlannerPage(),
    );
  }
}
