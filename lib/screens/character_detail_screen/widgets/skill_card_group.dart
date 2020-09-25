import 'package:GenshinImpactCompanionApp/models/skill_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/skill_attribute_table.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:flutter/material.dart';

class SkillCardGroup extends StatelessWidget {
  final String skillGroupName;
  final Function skillSubtitle;
  final List<Skill> skillList;

  const SkillCardGroup(
      {Key key, this.skillGroupName, this.skillList, this.skillSubtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          skillGroupName,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Column(
        children: skillList
            .asMap()
            .entries
            .map((skill) => Card(
                  elevation: 2.0,
                  child: ExpansionTile(
                      leading: Image.asset(
                        'assets/images/Icon_Map.png',
                        height: 40,
                      ),
                      title: Text(
                        skill.value.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                        ),
                      ),
                      subtitle: Text(
                        skillSubtitle(skill.key),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                        ),
                      ),
                      childrenPadding: const EdgeInsets.all(12.0),
                      children: [
                        TextParser(text: skill.value.desc),
                        const SizedBox(height: 16),
                        SkillAttributeTable(
                          skillAttributes: skill.value.skillAttributes,
                        ),
                      ]),
                ))
            .toList(),
      )
    ]);
  }
}
