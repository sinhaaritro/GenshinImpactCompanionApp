import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';
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
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4.0,
            child: CachedNetworkImage(
              imageUrl: character.icon,
              placeholder: (context, url) =>
                  Image.asset('assets/images/Character_Default_Icon.png'),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
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
                    character.weapon,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Text(" User"),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        )
      ],
    );
  }
}
