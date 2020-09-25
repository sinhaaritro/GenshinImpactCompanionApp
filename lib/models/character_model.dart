import 'package:GenshinImpactCompanionApp/models/character_skill_model.dart';

class Character {
  String name;
  String icon;
  String characterCard;
  String element;
  String gender;
  int rarity;
  String region;
  String weapon;
  String affiliation;
  String birthday;
  String constellation;
  String title;
  String shortdesc;
  List<CharacterSkill> activeSkills;
  List<CharacterSkill> passiveSkills;
  List<CharacterSkill> constellationSkills;

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    icon = json['icon'] as String;
    characterCard = json['character_card'] as String;
    element = json['element'] as String;
    gender = json['gender'] as String;
    rarity = json['rarity'] as int;
    region = json['region'] as String;
    weapon = json['weapon'] as String;
    affiliation = json['affiliation'] as String;
    birthday = json['birthday'] as String;
    constellation = json['constellation'] as String;
    title = json['title'] as String;

    shortdesc = json['overview']['shortdesc'] as String;

    if (json['skills']['combat_talent'] != null) {
      activeSkills = <CharacterSkill>[];
      json['skills']['combat_talent'].forEach((v) {
        activeSkills.add(CharacterSkill.fromJson(v));
      });
    }

    if (json['skills']['passive_talent'] != null) {
      passiveSkills = <CharacterSkill>[];
      json['skills']['passive_talent'].forEach((v) {
        passiveSkills.add(CharacterSkill.fromJson(v));
      });
    }

    if (json['skills']['constellations'] != null) {
      constellationSkills = <CharacterSkill>[];
      json['skills']['constellations'].forEach((v) {
        constellationSkills.add(CharacterSkill.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['icon'] = icon;
    data['character_card'] = characterCard;
    data['element'] = element;
    data['gender'] = gender;
    data['rarity'] = rarity;
    data['region'] = region;
    data['weapon'] = weapon;
    data['affiliation'] = affiliation;
    data['birthday'] = birthday;
    data['constellation'] = constellation;
    data['title'] = title;

    final Map<String, dynamic> overview = <String, dynamic>{};
    overview['shortdesc'] = shortdesc;
    data['overview'] = overview;

    final Map<String, dynamic> skills = <String, dynamic>{};
    if (activeSkills != null) {
      skills['combat_talent'] = activeSkills.map((v) => v.toJson()).toList();
    }
    if (passiveSkills != null) {
      skills['passive_talent'] = passiveSkills.map((v) => v.toJson()).toList();
    }
    if (constellationSkills != null) {
      skills['constellations'] =
          constellationSkills.map((v) => v.toJson()).toList();
    }

    data['skills'] = skills;

    return data;
  }
}
