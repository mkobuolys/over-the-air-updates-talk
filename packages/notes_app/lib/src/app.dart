import 'package:flutter/material.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({
    required this.aiEnabled,
    super.key,
  });

  final bool aiEnabled;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _App(aiEnabled: aiEnabled),
    );
  }
}

class _App extends StatefulWidget {
  const _App({
    required this.aiEnabled,
  });

  final bool aiEnabled;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  var _showAiButton = false;

  @override
  void didUpdateWidget(_App oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.aiEnabled == widget.aiEnabled) return;

    setState(() => _showAiButton = widget.aiEnabled);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
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
      floatingActionButton: _showAiButton
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.assistant),
            )
          : null,
    );
  }
}
