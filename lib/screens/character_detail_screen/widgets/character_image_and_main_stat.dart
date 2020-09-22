import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';
import 'package:GenshinImpactCompanionApp/models/rarity_model.dart';
import 'package:GenshinImpactCompanionApp/models/weapon_type_model.dart';
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
        Expanded(
          flex: 2,
          child: Image.asset('assets/images/Character_Default_Card.png'),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Rarity",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                ),
              ),
              const SizedBox(height: 12),
              Image.asset(
                RarityModel.rarityAsset(character.rarity),
              ),
              const SizedBox(height: 24),
              Text(
                "Element",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                ),
              ),
              const SizedBox(height: 12),
              Image.asset(
                ElementTypeModel.elementTypeAsset(character.element),
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 24),
              Text(
                "Weapon",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                ),
              ),
              const SizedBox(height: 12),
              Image.asset(
                WeaponTypeModel.weaponTypeAsset(character.weapon),
                height: 50,
                width: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
