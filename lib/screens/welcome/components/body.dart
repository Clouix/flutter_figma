import 'package:flutter/material.dart';
import 'package:flutter_application/components/rounded_button.dart';
import 'package:flutter_application/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          RoundedButton(
            text: "GET STARTED",
            edgeMargin: 70,
            press: () {},
          ),
          
        ],
      ),
    );
  }
}
