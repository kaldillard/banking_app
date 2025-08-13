import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMoneyButton extends StatelessWidget {
  const AddMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        radius: 8,
        child: const FaIcon(FontAwesomeIcons.plus, size: 8),
      ),
      label: const Text(
        "ADD MONEY",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
