import 'package:flutter/material.dart';

class CardName extends StatelessWidget {
  final String itemName;

  const CardName({
    Key key,
    @required this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        itemName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
