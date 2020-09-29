import 'package:GenshinImpactCompanionApp/models/weapon_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/weapon_detail_screen/widgets/weapon_image_and_main_stat.dart';
import 'package:GenshinImpactCompanionApp/screens/weapon_detail_screen/widgets/weapon_stats_section.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/about_the_item_section.dart';
import 'package:flutter/material.dart';

class WeaponDetail extends StatelessWidget {
  final Weapon weapon;

  const WeaponDetail({this.weapon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          WeaponImageAndMainStat(weapon: weapon),
          const SizedBox(height: 8),
          AboutTheItemSection(
            itemType: "weapon",
            itemDesc: weapon.desc,
          ),
          const SizedBox(height: 8),
          WeaponStatsSection(weapon: weapon),
          const SizedBox(height: 8),
          // ExpansionTile(
          //   title: const Text(
          //     "Stats",
          //     style: TextStyle(
          //       fontSize: 34,
          //       fontWeight: FontWeight.w400,
          //       letterSpacing: 0.25,
          //     ),
          //   ),
          //   children: [
          //     // ignore: avoid_unnecessary_containers
          //     Container(
          //       child: Text(weapon.gender),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
