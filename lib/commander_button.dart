import 'package:flutter/material.dart';

import 'circle_button.dart';

class CommanderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleButton(
        accentColor: Colors.grey.shade400,
        color: Colors.grey,
        icon: Icons.more_horiz,
        onLongPress: () {},
        onPressed: () {},
        shadow: true,
        size: 256,
      ),
      padding: EdgeInsets.symmetric(vertical: 50),
    );
  }
}
