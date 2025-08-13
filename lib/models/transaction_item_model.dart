import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionItem {
  final IconData icon;
  final String title;
  final String time;
  final String amount;

  TransactionItem({
    required this.icon,
    required this.title,
    required this.time,
    required this.amount,
  });
}

final transactions = [
  TransactionItem(
    icon: FontAwesomeIcons.amazon,
    title: "Amazon",
    time: "5:00pm",
    amount: "\$250.00",
  ),
  TransactionItem(
    icon: FontAwesomeIcons.apple,
    title: "Apple",
    time: "4:38pm",
    amount: "\$100.00",
  ),
];
