import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';
import 'package:flutter/material.dart';

class CharacterMainDetails extends StatelessWidget {
  const CharacterMainDetails({
    Key key,
    @required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          character.name,
          style: Theme.of(context).textTheme.headline5,
        ),
        Row(
          children: [
            Text(character.rarity.toString()),
            const Icon(
              Icons.grade,
              size: 18,
            ),
            const Icon(Icons.brightness_1),
            Text(
              character.element,
              style: Theme.of(context).textTheme.bodyText2.merge(TextStyle(
                  color: ElementTypeModel.elementTypeColor(character.element))),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              character.gender,
              style: Theme.of(context).textTheme.caption,
            ),
            const Icon(Icons.brightness_1),
            Text(
              character.weapon,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ],
    );
  }
}
