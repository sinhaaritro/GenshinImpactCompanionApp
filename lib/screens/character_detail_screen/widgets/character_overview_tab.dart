import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/key_value_pair_card.dart';
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
    return ExpansionTile(
      title: Text(
        "Overview",
        style: const TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
      ),
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
                Expanded(
                  child: KeyValuePairCard(
                    message: "Gender",
                    imageAsset: 'assets/images/Icon_Gender.png',
                    value: character.gender,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: KeyValuePairCard(
                      message: "Birthday",
                      imageAsset: 'assets/images/Icon_Birthday.png',
                      value: character.birthday),
                ),
              ]),
              const SizedBox(height: 8.0),
              Row(children: [
                Expanded(
                  child: KeyValuePairCard(
                      message: "Region",
                      imageAsset: 'assets/images/Icon_Map.png',
                      value: character.region),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: KeyValuePairCard(
                      message: "Constellation",
                      imageAsset: 'assets/images/Icon_Constellation.png',
                      value: character.constellation),
                ),
              ]),
              const SizedBox(height: 8.0),
              Row(children: [
                Expanded(
                  child: KeyValuePairCard(
                      message: "Affiliation",
                      imageAsset: 'assets/images/Icon_Affiliation.png',
                      value: character.affiliation),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: KeyValuePairCard(
                      message: "Titles",
                      imageAsset: 'assets/images/Icon_Title.png',
                      value: character.title),
                ),
              ]),
              const SizedBox(height: 8.0),
              const Divider(),
              const SizedBox(height: 8.0),
              Text(
                'Ingame Description',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                ),
              ),
              const SizedBox(height: 8.0),
              TextParser(text: character.shortdesc),
            ],
          ),
        ),
      ],
    );
  }
}
