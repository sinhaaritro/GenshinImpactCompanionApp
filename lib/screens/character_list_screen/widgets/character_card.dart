import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/character_detail_screen.dart';
import 'package:GenshinImpactCompanionApp/screens/character_list_screen/widgets/character_card_image.dart';
import 'package:GenshinImpactCompanionApp/screens/character_list_screen/widgets/character_card_name.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({Key key, @required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetail(
              character: character,
            ),
          ),
        );
      },
      child: Hero(
        tag: character.name,
        child: Column(
          children: <Widget>[
            CharacterCardImage(),
            CharacterCardName(characterName: character.name),
          ],
        ),
      ),
    );
  }
}
