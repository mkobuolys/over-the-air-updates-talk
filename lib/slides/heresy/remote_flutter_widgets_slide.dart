import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rfw_demo/app.dart';

const _simpleCounterCode = '''
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
      child: Icon(icon: 0xe047, fontFamily: 'MaterialIcons'),
    ),
  );
''';

const _improvedCounterCode = '''
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
          Row(
            mainAxisAlignment: "center",
            children: [
              FloatingActionButton(
                backgroundColor: 0xffebddff,
                onPressed: event "updateCounter" { increment: -1 },
                child: Icon(icon: 0xe516, fontFamily: 'MaterialIcons'),
              ),
              SizedBox(width: 16.0),
              FloatingActionButton(
                backgroundColor: 0xffebddff,
                onPressed: event "updateCounter" { increment: 1 },
                child: Icon(icon: 0xe047, fontFamily: 'MaterialIcons'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
''';

class RemoteFlutterWidgetsSlide extends FlutterDeckSlideWidget {
  const RemoteFlutterWidgetsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/remote-flutter-widgets',
            header: FlutterDeckHeaderConfiguration(
              title: 'Remote Flutter Widgets - rfw',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _SlideContent(),
    );
  }
}

class _SlideContent extends StatefulWidget {
  const _SlideContent();

  @override
  State<_SlideContent> createState() => _SlideContentState();
}

class _SlideContentState extends State<_SlideContent> {
  var _updated = false;

  void _updateApp() {
    setState(() => _updated = !_updated);
  }

  @override
  Widget build(BuildContext context) {
    final code = _updated ? _improvedCounterCode : _simpleCounterCode;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          child: FlutterDeckCodeHighlight(
            fileName: 'counter_app.rfwtxt',
            code: code,
            textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              textStyle: const TextStyle(fontSize: 36),
            ),
            onPressed: !_updated ? _updateApp : null,
            child: Text(_updated ? 'Updated!' : 'Sheep app update'),
          ),
        ),
        DeviceFrame(
          device: Devices.ios.iPhone13,
          screen: RfwDemoApp(code: code),
        ),
      ],
    );
  }
}
