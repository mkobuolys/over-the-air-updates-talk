import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _definition = '''
  import core.widgets;
  import core.material;

  widget root = Scaffold(
    appBar: AppBar(
      backgroundColor: 0xffd3bcfd,
      title: Text(text: "Sheep counter app"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: "center",
        children: [
          Text(
            text: "You have counted this many sheep:",
            textAlign: "center",
            style: { fontSize: 14.0 },
          ),
          Text(
            text: data.counter,
            style: { fontSize: 28.0 },
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: 0xffebddff,
      onPressed: event "updateCounter" { increment: 1 },
      child: Icon(icon: 0xe047, fontFamily: "MaterialIcons"),
    ),
  );
''';

const _definitionJson = '''
{
  "type": "Scaffold",
  "appBar": {
    "type": "AppBar",
    "backgroundColor": 0xffd3bcfd,
    "title": {
      "type": "Text",
      "text": "Sheep counter app"
    }
  },
  "body": {
    "type": "Center",
    "child": {
      "type": "Column",
      "mainAxisAlignment": "center",
      "children": [
        {
          "type": "Text",
          "text": "You have counted this many sheep:",
          "textAlign": "center",
          "style": { "fontSize": 14.0 }
        },
        {
          "type": "Text",
          "text": "data.counter",
          "style": { "fontSize": 28.0 }
        }
      ]
    }
  },
  "floatingActionButton": {
    "type": "FloatingActionButton",
    "backgroundColor": 0xffebddff,
    "onPressed": { "event": "updateCounter", "increment": 1 },
    "child": {
      "type": "Icon",
      "icon": 0xe047,
      "fontFamily": "MaterialIcons"
    }
  }
}
''';

const _code = '''
  import 'package:flutter/material.dart';
  // <...>

  Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xffd3bcfd),
      title: Text("Sheep counter app"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have counted this many sheep:",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0),
          ),
          Text(
            "\${counter}",
            style: TextStyle(fontSize: 28.0)
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color(0xffebddff),
      onPressed: () => updateCounter(increment: 1),
      child: Icon(IconData(0xe047, fontFamily: "MaterialIcons")),
    ),
  );
''';

class CodeVsDefinitionSlide extends FlutterDeckSlideWidget {
  const CodeVsDefinitionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/code-vs-definition',
          steps: 2,
          header: FlutterDeckHeaderConfiguration(title: 'Definition vs Code'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        final style = FlutterDeckTheme.of(context).textTheme.bodyLarge;

        return SingleChildScrollView(
          child: FlutterDeckSlideStepsBuilder(
            builder: (context, step) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (step == 1) ...[
                  Expanded(
                    child: FlutterDeckCodeHighlight(
                      fileName: 'counter_app.rfwtxt',
                      code: _definition,
                      textStyle: style,
                    ),
                  ),
                  Expanded(
                    child: FlutterDeckCodeHighlight(
                      fileName: 'counter_app.json',
                      code: _definitionJson,
                      textStyle: style,
                    ),
                  ),
                ] else ...[
                  Expanded(
                    child: FlutterDeckCodeHighlight(
                      fileName: 'counter_app.rfwtxt',
                      code: _definition,
                      textStyle: style,
                    ),
                  ),
                  Expanded(
                    child: FlutterDeckCodeHighlight(fileName: 'counter_app.dart', code: _code, textStyle: style),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
