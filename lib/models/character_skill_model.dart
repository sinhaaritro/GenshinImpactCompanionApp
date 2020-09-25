import 'package:GenshinImpactCompanionApp/models/character_skill_attribute_model.dart';

class CharacterSkill {
  String name;
  String desc;
  String icon;
  List<CharacterSkillAttribute> skillAttributes;

  CharacterSkill.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    icon = json['icon'] as String;
    desc = json['desc'] as String;

    if (json['attributes'] != null) {
      skillAttributes = <CharacterSkillAttribute>[];
      json['attributes'].forEach((v) {
        skillAttributes.add(CharacterSkillAttribute.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['icon'] = icon;
    data['desc'] = desc;

    if (skillAttributes != null) {
      data['attributes'] = skillAttributes.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
