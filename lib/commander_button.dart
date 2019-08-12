import 'package:flutter/material.dart';

import 'circle_button.dart';

class CommanderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleButton(
        accentColor: Colors.grey.shade100,
        color: Colors.grey,
        icon: Icons.more_horiz,
        onLongPress: () {},
        onPressed: () {},
        size: 128,
      ),
      padding: EdgeInsets.symmetric(vertical: 20),
    );
  }
}
