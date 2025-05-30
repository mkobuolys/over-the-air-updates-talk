import 'package:flutter/material.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({
    this.aiEnabled = true,
    this.aiButtonAsFab = true,
    super.key,
  });

  final bool aiEnabled;
  final bool aiButtonAsFab;

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
      ),
    );
  }
}

class _App extends StatefulWidget {
  const _App({
    required this.aiEnabled,
    required this.aiButtonAsFab,
  });

  final bool aiEnabled;
  final bool aiButtonAsFab;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  var _showAiButton = true;
  var _showButtonAsFab = true;

  @override
  void didUpdateWidget(_App oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.aiEnabled == widget.aiEnabled &&
        oldWidget.aiButtonAsFab == widget.aiButtonAsFab) {
      return;
    }

    setState(() {
      _showAiButton = widget.aiEnabled;
      _showButtonAsFab = widget.aiButtonAsFab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: [
          if (_showAiButton && !_showButtonAsFab)
            IconButton(
              icon: const Icon(Icons.assistant),
              onPressed: () {},
            ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text('Note #${index + 1}'),
          subtitle: Text('A simple note description for note #${index + 1}'),
        ),
        itemCount: 100,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.notes),
            label: 'Notes',
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
