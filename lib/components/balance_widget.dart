import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(FontAwesomeIcons.dollarSign),
        SizedBox(width: 6),
        Text(
          "30,875",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        ),
        SizedBox(width: 6),
        Text(
          ".78",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
