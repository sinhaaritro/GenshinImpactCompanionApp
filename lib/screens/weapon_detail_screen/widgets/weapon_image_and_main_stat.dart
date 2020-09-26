import 'package:GenshinImpactCompanionApp/models/weapon_list_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WeaponImageAndMainStat extends StatelessWidget {
  final Weapon weapon;

  const WeaponImageAndMainStat({
    Key key,
    @required this.weapon,
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
                  imageUrl: weapon.icon,
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
                      weapon.name,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          weapon.rarity.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const Icon(Icons.grade, size: 18),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          weapon.weaponType,
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
        ],
      ),
    );
  }
}
