import "package:flutter/material.dart";

class CircleButton extends StatelessWidget {
  const CircleButton({
    this.accentColor,
    this.color,
    this.icon,
    this.onLongPress,
    this.onPressed,
    this.shadow,
    this.size,
    Key key,
  }) : super(key: key);

  final Color accentColor;
  final Color color;
  final IconData icon;
  final VoidCallback onLongPress;
  final VoidCallback onPressed;
  final bool shadow;
  final double size;

  List<BoxShadow> _makeBoxShadows() {
    if (this.shadow ?? false) {
      return [
        BoxShadow(
          blurRadius: 20.0,
          color: Colors.black26,
          offset: Offset(this.size / 20, this.size / 20),
        ),
      ];
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
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
      ),
      decoration: BoxDecoration(
        boxShadow: this._makeBoxShadows(),
        shape: BoxShape.circle,
      ),
    );
  }
}
