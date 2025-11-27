import 'package:flutter/material.dart';

import 'travel_planner_page.dart';

const _title = 'Agentic Travel Inc';

/// The root widget for the travel application.
///
/// This widget sets up the [MaterialApp], which configures the overall theme,
/// title, and home page for the app. It serves as the main entry point for the
/// user interface.
class TravelApp extends StatelessWidget {
  /// Creates a new [TravelApp].
  const TravelApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const _TravelAppBody(),
    );
  }
}

class _TravelAppBody extends StatelessWidget {
  const _TravelAppBody();

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
            Text(_title),
          ],
        ),
      ),
      body: const TravelPlannerPage(),
    );
  }
}
