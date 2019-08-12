import "package:flutter/material.dart";

class CircleButton extends StatelessWidget {
  const CircleButton({
    this.accentColor,
    this.color,
    this.icon,
    this.onLongPress,
    this.onPressed,
    this.size,
    Key key,
  }) : super(key: key);

  final Color accentColor;
  final Color color;
  final IconData icon;
  final VoidCallback onLongPress;
  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          child: SizedBox(
            child: Icon(this.icon, color: Colors.white),
            height: size,
            width: size,
          ),
          onTap: this.onPressed,
          onLongPress: this.onLongPress,
          splashColor: this.accentColor,
        ),
        color: this.color,
      ),
    );
  }
}
