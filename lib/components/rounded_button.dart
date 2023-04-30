import 'package:flutter/material.dart';
import 'package:flutter_application/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  final double edgeMargin;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColorLightColor,
    this.textColor = orangeColor, 
    required this.edgeMargin,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: edgeMargin),
      width: size.width * 0.8,
      child: ClipRect(
        child: TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              backgroundColor: kPrimaryColorLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              )),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
