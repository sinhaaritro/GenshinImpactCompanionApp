import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_image_and_main_stat.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_skill_section.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/about_the_item_section.dart';
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
          const SizedBox(height: 8),
          AboutTheItemSection(
            itemType: "character",
            itemDesc: character.shortdesc,
          ),
          const SizedBox(height: 8),
          CharacterSkillSection(character: character),
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
          //       child: Text(character.gender),
          //     ),
          //   ],
          // ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
