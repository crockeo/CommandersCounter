import "package:flutter/material.dart";

class LifeCounter extends StatefulWidget {
  @override
  LifeCounterState createState() => LifeCounterState();
}

class LifeCounterState extends State<LifeCounter> {
  int _life = 40;

  void _changeLife(int diff) {
    setState(() {
      _life = _life + diff;
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
          child: Text(_life.toString(), style: TextStyle(fontSize: 36)),
          padding: EdgeInsets.symmetric(horizontal: 20),
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
  const LifeButton({this.onPressed, this.onLongPress, this.icon, Key key})
      : super(key: key);

  final VoidCallback onPressed;
  final VoidCallback onLongPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          child: SizedBox(
            child: Icon(this.icon, color: Colors.white),
            height: 56,
            width: 56,
          ),
          onTap: this.onPressed,
          onLongPress: this.onLongPress,
          splashColor: Colors.lightBlueAccent,
        ),
        color: Colors.blue,
      ),
    );
  }
}
