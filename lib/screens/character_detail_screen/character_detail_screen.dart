import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_image_and_main_stat.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_overview_tab.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/character_skill_tab.dart';
import 'package:flutter/material.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;

  CharacterDetail({this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          CharacterImageAndMainStat(character: character),
          CharacterOverviewTab(character: character),
          CharacterSkillTab(character: character),
          ExpansionTile(
              title: Text(
                "Stats",
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                ),
              ),
              initiallyExpanded: false,
              children: [
                Container(
                  child: Text(character.gender),
                ),
              ]),
        ],
      ),
    );
  }
}
