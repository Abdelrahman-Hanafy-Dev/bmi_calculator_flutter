import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  late final String buttonLabel;
  late final VoidCallback onPressed;

  BottomButton({required this.buttonLabel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomButtonColor,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
