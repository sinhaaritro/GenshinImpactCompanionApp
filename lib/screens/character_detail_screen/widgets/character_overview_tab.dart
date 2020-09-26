import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:flutter/material.dart';

class CharacterOverviewTab extends StatelessWidget {
  final Character character;

  const CharacterOverviewTab({
    Key key,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "About the character",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextParser(text: character.shortdesc),
        ),
      ],
    );
  }
}
