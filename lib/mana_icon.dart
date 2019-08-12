import 'package:flutter/material.dart';

class ManaIcon extends StatelessWidget {
  const ManaIcon({this.size, this.symbol, Key key}) : super(key: key);

  final double size;
  final String symbol;

  String _assetPath() {
    return "assets/mana/{}.png".replaceAll("{}", symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        this._assetPath(),
        height: size,
        width: size,
      ),
      padding: EdgeInsets.only(top: 10.0),
    );
  }
}
