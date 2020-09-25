import 'package:flutter/material.dart';

class CharacterCardName extends StatelessWidget {
  final String characterName;

  const CharacterCardName({
    Key key,
    @required this.characterName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        characterName,
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
