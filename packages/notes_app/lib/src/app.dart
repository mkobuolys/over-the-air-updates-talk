import 'package:flutter/material.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({
    this.aiEnabled = true,
    this.aiButtonAsFab = true,
    this.showPromoBanner = false,
    super.key,
  });

  final bool aiEnabled;
  final bool aiButtonAsFab;
  final bool showPromoBanner;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _App(
        aiEnabled: aiEnabled,
        aiButtonAsFab: aiButtonAsFab,
        showPromoBanner: showPromoBanner,
      ),
    );
  }
}

class _App extends StatefulWidget {
  const _App({
    required this.aiEnabled,
    required this.aiButtonAsFab,
    required this.showPromoBanner,
  });

  final bool aiEnabled;
  final bool aiButtonAsFab;
  final bool showPromoBanner;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  late var _showAiButton = widget.aiEnabled;
  late var _showButtonAsFab = widget.aiButtonAsFab;
  late var _showPromoBanner = widget.showPromoBanner;

  @override
  void didUpdateWidget(_App oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.aiEnabled == widget.aiEnabled &&
        oldWidget.aiButtonAsFab == widget.aiButtonAsFab &&
        oldWidget.showPromoBanner == widget.showPromoBanner) {
      return;
    }

    setState(() {
      _showAiButton = widget.aiEnabled;
      _showButtonAsFab = widget.aiButtonAsFab;
      _showPromoBanner = widget.showPromoBanner;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: _showAiButton
            ? [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    spacing: 4.0,
                    children: [
                      Text('500'),
                      Icon(Icons.monetization_on),
                    ],
                  ),
                ),
              ]
            : null,
      ),
      body: Column(
        children: [
          if (_showPromoBanner)
            Container(
              width: double.infinity,
              color: Colors.amber,
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: const Text('-20% off on your next credit purchase!'),
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text('Note #${index + 1}'),
                subtitle: Text(
                  'A simple note description for note #${index + 1}',
                ),
              ),
              itemCount: 100,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.notes),
            label: 'Notes',
          ),
          if (_showAiButton && !_showButtonAsFab)
            BottomNavigationBarItem(
              icon: const Icon(Icons.assistant),
              label: 'AI Assistant',
            ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.post_add),
            label: 'New',
          ),
        ],
      ),
      floatingActionButton: _showAiButton && _showButtonAsFab
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.assistant),
            )
          : null,
    );
  }
}
