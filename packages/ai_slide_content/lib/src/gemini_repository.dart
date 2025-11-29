import 'dart:convert';

import 'package:flutter/widgets.dart';

import 'gemini_client.dart';

const _exampleCode = '''
import core.widgets;
import core.material;

widget root = Row(
  children: [
    Expanded(
      child: Column(
        crossAxisAlignment: "start",
        children: [
          Text(
            text: "Dante's Divine Comedy",
            style: { fontSize: 80.0 },
          ),
          SizedBox(height: 48.0),
          Expanded(
            child: ListView(
              children: [
                FactRow(text: "Written in the early 14th century."),
                FactRow(text: "Divided into Inferno, Purgatorio, and Paradiso."),
                FactRow(text: "Considered one of the greatest works of world literature."),
              ],
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 48.0),
    Expanded(
      child: Image(
        source: "https://image.pollinations.ai/prompt/divine%20comedy%20dante",
      ),
    ),
  ],
);

widget FactRow = Row(
  crossAxisAlignment: "start",
  children: [
    Text(
      text: '-',
      style: { fontSize: 56.0 },
    ),
    SizedBox(width: 16.0),
    Expanded(
      child: Text(
        text: args.text,
        style: { fontSize: 56.0 },
      ),
    ),
  ],
);
''';

class GeminiRepository {
  const GeminiRepository({
    required GeminiClient client,
  }) : _client = client;

  final GeminiClient _client;

  Future<String?> generateSlideContent(String topic) async {
    try {
      final response = await _client.generateSlideContent(topic, _exampleCode);

      if (response == null) return null;

      final code = jsonDecode(response);

      if (code is String) return code;

      return null;
    } catch (e) {
      debugPrint('Problem with the Generative AI service: $e');

      return null;
    }
  }
}

class FakeGeminiRepository implements GeminiRepository {
  const FakeGeminiRepository();

  @override
  Future<String?> generateSlideContent(String topic) async {
    await Future.delayed(const Duration(seconds: 2));

    return _exampleCode;
  }

  @override
  // ignore: unused_element - fake repository does not use client
  GeminiClient get _client => throw UnimplementedError();
}
