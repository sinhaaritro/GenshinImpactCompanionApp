import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_image_and_main_stat.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_overview_tab.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_skill_tab.dart';
import 'package:flutter/material.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;

  const CharacterDetail({this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          CharacterImageAndMainStat(character: character),
          CharacterOverviewTab(character: character),
          CharacterSkillTab(character: character),
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
          //       child: Text(character.gender),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
