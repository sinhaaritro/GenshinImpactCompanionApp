import 'package:flutter/material.dart';

class CharacterCardImage extends StatelessWidget {
  const CharacterCardImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            'assets/images/Character_Default_Icon.png',
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
