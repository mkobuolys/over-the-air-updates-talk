// Copyright 2025 The Flutter Authors.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_genui/flutter_genui.dart';
import 'package:flutter_genui_firebase_ai/flutter_genui_firebase_ai.dart';

import 'travel_planner_page.dart';

/// The root widget for the travel application.
///
/// This widget sets up the [MaterialApp], which configures the overall theme,
/// title, and home page for the app. It serves as the main entry point for the
/// user interface.
class TravelApp extends StatelessWidget {
  /// Creates a new [TravelApp].
  ///
  /// The optional [aiClient] can be used to inject a specific AI client,
  /// which is useful for testing with a mock implementation.
  const TravelApp({this.aiClient, super.key});

  final AiClient? aiClient;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agentic Travel Inc.',
      home: _TravelAppBody(aiClient),
    );
  }
}

class _TravelAppBody extends StatelessWidget {
  _TravelAppBody(this.aiClient);

  /// The AI client to use for the application.
  ///
  /// If null, a default [FirebaseAiClient] will be created by the
  /// [TravelPlannerPage].
  final AiClient? aiClient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.local_airport),
            SizedBox(width: 16.0), // Add spacing between icon and text
            Text('Agentic Travel Inc.'),
          ],
        ),
      ),
      body: TravelPlannerPage(aiClient: aiClient),
    );
  }
}
