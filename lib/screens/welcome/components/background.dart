import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: 100,
            child: Image.asset(
              "assets/images/logorojo.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            top: 300,
            child: Image.asset(
              "assets/images/vroja.png",
              width: size.width * 0.85,
            ),
          ),
          Positioned(
            top: 820,
            child: Text(
              "Lenguaje orco",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
