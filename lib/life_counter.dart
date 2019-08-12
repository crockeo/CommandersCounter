import 'package:flutter/material.dart';
import 'dart:math';

import 'circle_button.dart';

class LifeCounter extends StatefulWidget {
  @override
  LifeCounterState createState() => LifeCounterState();
}

class LifeCounterState extends State<LifeCounter> {
  int _life = 40;

  void _changeLife(int diff) {
    setState(() {
      _life += diff;
      _life = min(_life, 999);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LifeButton(
          onPressed: () => this._changeLife(-1),
          onLongPress: () => this._changeLife(-5),
          icon: Icons.remove,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(_life.toString(), style: TextStyle(fontSize: 36)),
          width: 90,
        ),
        LifeButton(
          onPressed: () => this._changeLife(1),
          onLongPress: () => this._changeLife(5),
          icon: Icons.add,
        ),
      ],
    );
  }
}

class LifeButton extends StatelessWidget {
  const LifeButton({
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
      size: 50,
    );
  }
}
