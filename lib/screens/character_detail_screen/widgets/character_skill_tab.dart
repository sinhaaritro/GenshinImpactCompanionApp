import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/models/character_skill_type_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/skill_card_group.dart';
import 'package:flutter/material.dart';

class CharacterSkillTab extends StatelessWidget {
  const CharacterSkillTab({
    Key key,
    @required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: const Text(
          "Skills",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SkillCardGroup(
                skillGroupName: "Active Skills",
                skillList: character.activeSkills,
                skillSubtitle: CharacterSkillTypeModel.activeSkillType,
              ),
              const SizedBox(height: 12.0),
              SkillCardGroup(
                skillGroupName: "Passive Skills",
                skillList: character.passiveSkills,
                skillSubtitle: CharacterSkillTypeModel.passiveSkillType,
              ),
              const SizedBox(height: 12.0),
              SkillCardGroup(
                skillGroupName: "Constellations",
                skillList: character.constellationSkills,
                skillSubtitle: CharacterSkillTypeModel.constellationsSkillType,
              ),
            ]),
          ),
        ]);
  }
}
