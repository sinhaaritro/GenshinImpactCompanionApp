import 'package:GenshinImpactCompanionApp/models/skill_attribute_model.dart';

class Skill {
  String name;
  String desc;
  String icon;
  List<SkillAttribute> skillAttributes;

  Skill.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    icon = json['icon'] as String;
    desc = json['desc'] as String;

    //TODO
    if (icon == "image") {
      icon =
          "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png";
    }

    if (json['attributes'] != null) {
      skillAttributes = <SkillAttribute>[];
      json['attributes'].forEach((v) {
        skillAttributes.add(SkillAttribute.fromJson(v));
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
