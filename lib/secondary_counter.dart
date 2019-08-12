import 'package:flutter/material.dart';
import 'dart:math';

import 'circle_button.dart';

class SecondaryCounter extends StatefulWidget {
  @override
  SecondaryCounterState createState() => SecondaryCounterState();
}

class SecondaryCounterState extends State<SecondaryCounter> {
  int _counter = 0;

  void _changeCount(int diff) {
    setState(() {
      _counter += diff;
      _counter = max(_counter, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SecondaryButton(
          icon: Icons.add,
          onLongPress: () => _changeCount(5),
          onPressed: () => _changeCount(1),
        ),
        Container(
          child: Text(_counter.toString(), style: TextStyle(fontSize: 24)),
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        SecondaryButton(
          icon: Icons.remove,
          onLongPress: () => _changeCount(-5),
          onPressed: () => _changeCount(-1),
        ),
      ],
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    this.icon,
    this.onLongPress,
    this.onPressed,
    Key key,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onLongPress;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      accentColor: Colors.lightBlueAccent,
      color: Colors.lightBlue,
      icon: this.icon,
      onLongPress: this.onLongPress,
      onPressed: this.onPressed,
      size: 36,
    );
  }
}
