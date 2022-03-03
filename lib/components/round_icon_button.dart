import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  late final Icon buttonIcon;
  late final VoidCallback onPressed;
  late final VoidCallback? onLongPressed;

  RoundIconButton(
      {required this.buttonIcon, required this.onPressed, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: buttonIcon,
      onLongPress: onLongPressed,
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF1C1F32),
      shape: CircleBorder(),
    );
  }
}
