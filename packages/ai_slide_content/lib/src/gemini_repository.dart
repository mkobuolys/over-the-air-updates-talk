import 'package:flutter/widgets.dart';

import 'gemini_client.dart';

class GeminiRepository {
  const GeminiRepository({
    required GeminiClient client,
  }) : _client = client;

  final GeminiClient _client;

  Future<String?> generateSlideContent() async {
    try {
      final response = await _client.generateSlideContent();

      return response;
    } catch (e) {
      debugPrint('Problem with the Generative AI service: $e');

      return null;
    }
  }
}

class FakeGeminiRepository implements GeminiRepository {
  static const _code = '''
import core.widgets;
import core.material;

widget root = Center(
  child: Text(
    text: "Hello from the generated code!",
    textAlign: "center",
    style: { fontSize: 64.0 },
  ),
);
''';

  const FakeGeminiRepository();

  @override
  Future<String?> generateSlideContent() async {
    await Future.delayed(const Duration(seconds: 2));

    return _code;
  }

  @override
  // ignore: unused_element - fake repository does not use client
  GeminiClient get _client => throw UnimplementedError();
}
