import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/key_value_pair_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CharacterImageAndMainStat extends StatelessWidget {
  final Character character;

  const CharacterImageAndMainStat({
    Key key,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Card(
                elevation: 4.0,
                child: CachedNetworkImage(
                  height: 106,
                  width: 106,
                  imageUrl: character.icon,
                  placeholder: (context, url) =>
                      Image.asset('assets/images/Character_Default_Icon.png'),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          character.rarity.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const Icon(Icons.grade, size: 18),
                        const SizedBox(width: 12),
                        Text(
                          character.element,
                          style: Theme.of(context).textTheme.headline6.merge(
                              TextStyle(
                                  color: ElementTypeModel.elementTypeColor(
                                      character.element))),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          character.gender,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const Text(" "),
                        Text(
                          character.weapon,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          " User",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: KeyValuePairCard(
                    message: "Birthday",
                    imageAsset: 'assets/images/Icon_Birthday.png',
                    value: character.birthday),
              ),
              Expanded(
                child: KeyValuePairCard(
                    message: "Region",
                    imageAsset: 'assets/images/Icon_Map.png',
                    value: character.region),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: KeyValuePairCard(
                    message: "Affiliation",
                    imageAsset: 'assets/images/Icon_Affiliation.png',
                    value: character.affiliation),
              ),
              Expanded(
                child: KeyValuePairCard(
                    message: "Constellation",
                    imageAsset: 'assets/images/Icon_Constellation.png',
                    value: character.constellation),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
