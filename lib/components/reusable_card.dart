import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  late final Color color;
  late final Widget? cardChild;
  late final VoidCallback? onCardPressed;

  ReusableCard({
    required this.color,
    this.cardChild,
    this.onCardPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
