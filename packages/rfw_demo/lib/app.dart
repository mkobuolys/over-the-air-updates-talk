import 'package:flutter/material.dart';
import 'package:rfw/formats.dart' show parseLibraryFile;
import 'package:rfw/rfw.dart';

class RfwDemoApp extends StatelessWidget {
  const RfwDemoApp({
    required this.code,
    super.key,
  });

  final String code;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RFW Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: _App(code: code),
    );
  }
}

class _App extends StatefulWidget {
  const _App({
    required this.code,
  });

  final String code;

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  static const _widgetsLibraryName = LibraryName(['core', 'widgets']);
  static const _materialLibraryName = LibraryName(['core', 'material']);
  static const _mainLibraryName = LibraryName(['main']);

  final _runtime = Runtime();
  final _data = DynamicContent();
  var _counter = 0;

  @override
  void initState() {
    super.initState();

    _runtime.update(_widgetsLibraryName, createCoreWidgets());
    _runtime.update(_materialLibraryName, createMaterialWidgets());

    _updateMainLibrary();
    _updateData();
  }

  @override
  void didUpdateWidget(covariant _App oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.code == widget.code) return;

    _updateMainLibrary();
  }

  void _updateMainLibrary() {
    final remoteWidgets = parseLibraryFile(widget.code);

    _runtime.update(_mainLibraryName, remoteWidgets);
  }

  void _updateCounter(int value) {
    setState(() => _counter += value);
  }

  void _updateData() {
    _data.update('counter', _counter.toString());
  }

  void _onEvent(String name, DynamicMap arguments) {
    if (name != 'updateCounter') return;

    _updateCounter(arguments['increment'] as int);
    _updateData();
  }

  @override
  Widget build(BuildContext context) {
    return RemoteWidget(
      runtime: _runtime,
      data: _data,
      widget: const FullyQualifiedWidgetName(_mainLibraryName, 'root'),
      onEvent: _onEvent,
    );
  }
}
