import 'package:flutter/material.dart';
import 'dart:math';

import 'circle_button.dart';
import 'mana_icon.dart';

class SecondaryCounter extends StatefulWidget {
  const SecondaryCounter({this.symbol, Key key}) : super(key: key);

  final String symbol;

  @override
  SecondaryCounterState createState() => SecondaryCounterState(symbol);
}

class SecondaryCounterState extends State<SecondaryCounter> {
  SecondaryCounterState(this._symbol);

  final String _symbol;
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
        ManaIcon(
          size: 36,
          symbol: this._symbol,
        )
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
