import 'package:flutter/material.dart';
import 'package:rfw/formats.dart' show parseLibraryFile;
import 'package:rfw/rfw.dart';
import 'package:shimmer/shimmer.dart';

import 'gemini_client.dart';
import 'gemini_repository.dart';

class AISlideContent extends StatefulWidget {
  const AISlideContent({
    required this.topicPrompt,
    required this.useFakeContent,
    super.key,
  });

  final String topicPrompt;
  final bool useFakeContent;

  @override
  State<AISlideContent> createState() => _AISlideContentState();
}

class _AISlideContentState extends State<AISlideContent> {
  static const _widgetsLibraryName = LibraryName(['core', 'widgets']);
  static const _materialLibraryName = LibraryName(['core', 'material']);
  static const _mainLibraryName = LibraryName(['main']);

  late final GeminiRepository _repository;
  late Future<void> _geminiResponseFuture;

  final _data = DynamicContent();
  final _runtime = Runtime();

  late var _topicPrompt = widget.topicPrompt;

  @override
  void initState() {
    super.initState();

    _runtime.update(_widgetsLibraryName, createCoreWidgets());
    _runtime.update(_materialLibraryName, createMaterialWidgets());

    _repository = widget.useFakeContent
        ? const FakeGeminiRepository()
        : GeminiRepository(client: GeminiClient());
  }

  @override
  void didUpdateWidget(covariant AISlideContent oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.topicPrompt == widget.topicPrompt) return;

    _topicPrompt = widget.topicPrompt;
    _generateContent();
  }

  Future<void> _generateSlideContent() async {
    final code = await _repository.generateSlideContent(_topicPrompt);

    if (code == null) {
      return Future.error(Exception('Slide content generation failed.'));
    }

    final remoteWidgets = parseLibraryFile(code);

    _runtime.update(_mainLibraryName, remoteWidgets);
  }

  void _generateContent() {
    setState(() {
      _geminiResponseFuture = _generateSlideContent();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_topicPrompt.isEmpty) {
      return const Center(
        child: Text(
          'Enter a topic to generate content for this slide',
          style: TextStyle(fontSize: 64.0),
        ),
      );
    }

    return FutureBuilder(
      future: _geminiResponseFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const _LoadingContent();
        }

        if (snapshot.hasError) {
          return _ErrorContent(onRetry: _generateContent);
        }

        return RemoteWidget(
          runtime: _runtime,
          data: _data,
          widget: const FullyQualifiedWidgetName(_mainLibraryName, 'root'),
        );
      },
    );
  }
}

class _LoadingContent extends StatelessWidget {
  const _LoadingContent();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.withAlpha(50),
      highlightColor: Colors.grey.withAlpha(100),
      child: Row(
        spacing: 64.0,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(color: Colors.grey, height: 96.0, width: 640.0),
                const SizedBox(height: 64.0),
                Container(color: Colors.grey, height: 64.0, width: 960.0),
                const SizedBox(height: 16.0),
                Container(color: Colors.grey, height: 64.0, width: 640.0),
                const SizedBox(height: 32.0),
                Container(color: Colors.grey, height: 64.0, width: 960.0),
                const SizedBox(height: 16.0),
                Container(color: Colors.grey, height: 64.0, width: 640.0),
                const SizedBox(height: 32.0),
                Container(color: Colors.grey, height: 64.0, width: 960.0),
                const SizedBox(height: 16.0),
                Container(color: Colors.grey, height: 64.0, width: 640.0),
              ],
            ),
          ),
          const SizedBox(width: 64.0),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: SizedBox.expand(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorContent extends StatelessWidget {
  const _ErrorContent({
    required this.onRetry,
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.0,
        children: [
          Text(
            'Oops! Could not generate slide content 😢',
            style: TextStyle(fontSize: 64.0),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              textStyle: const TextStyle(fontSize: 36.0),
            ),
            onPressed: onRetry,
            child: Text('Try again'),
          ),
        ],
      ),
    );
  }
}
