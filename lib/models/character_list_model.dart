class CharacterList {
  static List<Character> characters;

  CharacterList.fromJson(Map<String, dynamic> json) {
    if (json['genshin_impact']['characters'] != null) {
      characters = new List<Character>();
      json['genshin_impact']['characters'].forEach((v) {
        characters.add(new Character.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (CharacterList.characters != null) {
      data['characters'] =
          CharacterList.characters.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

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
  List<Skill> activeSkills;
  List<Skill> passiveSkills;
  List<Skill> constellationSkills;

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    characterCard = json['character_card'];
    element = json['element'];
    gender = json['gender'];
    rarity = json['rarity'];
    region = json['region'];
    weapon = json['weapon'];
    affiliation = json['affiliation'];
    birthday = json['birthday'];
    constellation = json['constellation'];
    title = json['title'];

    shortdesc = json['overview']['shortdesc'];

    if (json['skills']['combat_talent'] != null) {
      activeSkills = new List<Skill>();
      json['skills']['combat_talent'].forEach((v) {
        activeSkills.add(new Skill.fromJson(v));
      });
    }

    if (json['skills']['passive_talent'] != null) {
      passiveSkills = new List<Skill>();
      json['skills']['passive_talent'].forEach((v) {
        passiveSkills.add(new Skill.fromJson(v));
      });
    }

    if (json['skills']['constellations'] != null) {
      constellationSkills = new List<Skill>();
      json['skills']['constellations'].forEach((v) {
        constellationSkills.add(new Skill.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['character_card'] = this.characterCard;
    data['element'] = this.element;
    data['gender'] = this.gender;
    data['rarity'] = this.rarity;
    data['region'] = this.region;
    data['weapon'] = this.weapon;
    data['affiliation'] = this.affiliation;
    data['birthday'] = this.birthday;
    data['constellation'] = this.constellation;
    data['title'] = this.title;

    final Map<String, dynamic> overview = new Map<String, dynamic>();
    overview['shortdesc'] = this.shortdesc;
    data['overview'] = overview;

    final Map<String, dynamic> skills = new Map<String, dynamic>();
    if (this.activeSkills != null) {
      skills['combat_talent'] =
          this.activeSkills.map((v) => v.toJson()).toList();
    }
    if (this.passiveSkills != null) {
      skills['passive_talent'] =
          this.passiveSkills.map((v) => v.toJson()).toList();
    }
    if (this.constellationSkills != null) {
      skills['constellations'] =
          this.constellationSkills.map((v) => v.toJson()).toList();
    }

    data['skills'] = skills;

    return data;
  }
}

class Skill {
  String name;
  String desc;
  String icon;
  List<SkillAttribute> skillAttributes;

  Skill.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    desc = json['desc'];

    if (json['attributes'] != null) {
      skillAttributes = new List<SkillAttribute>();
      json['attributes'].forEach((v) {
        skillAttributes.add(new SkillAttribute.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['desc'] = this.desc;

    if (this.skillAttributes != null) {
      data['attributes'] = this.skillAttributes.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class SkillAttribute {
  String name;
  String value;

  SkillAttribute.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['value'] = this.value;

    return data;
  }
}
