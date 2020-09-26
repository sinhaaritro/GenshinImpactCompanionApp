import 'package:GenshinImpactCompanionApp/models/character_skill_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/widgets/skill_attribute_table.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SkillCardGroup extends StatelessWidget {
  final String skillGroupName;
  final Function skillSubtitle;
  final List<CharacterSkill> skillList;

  const SkillCardGroup(
      {Key key, this.skillGroupName, this.skillList, this.skillSubtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            skillGroupName,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Column(
          children: skillList
              .asMap()
              .entries
              .map(
                (skill) => ExpansionTile(
                  leading: CachedNetworkImage(
                    imageUrl: skill.value.icon,
                    placeholder: (context, url) =>
                        Image.asset('assets/images/Character_Default_Icon.png'),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    height: 40,
                    width: 40,
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
                  children: [
                    TextParser(text: skill.value.desc),
                    const SizedBox(height: 16),
                    SkillAttributeTable(
                      skillAttributes: skill.value.skillAttributes,
                    ),
                  ],
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
