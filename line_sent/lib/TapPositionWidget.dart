import 'package:flutter/material.dart';
import 'package:positioned_tap_detector/positioned_tap_detector.dart';
class TapPositionWidget extends StatefulWidget {
  @override
  _TapPositionWidgetState createState() => _TapPositionWidgetState();
}

class _TapPositionWidgetState extends State<TapPositionWidget> {

  void _printTap(String gesture, TapPosition position) =>
      print('$gesture: ${position.global}, ${position.relative} \n Widget X: ${position.relative.dx} Y: ${position.relative.dy}');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: PositionedTapDetector(
              onTap: (position) => _printTap('Single tap', position),
              child: Container(
                width: 400,
                height: 400,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
