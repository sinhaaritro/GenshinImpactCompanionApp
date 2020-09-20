class CharacterModel {
  List<Character> characters;

  CharacterModel({this.characters});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    if (json['genshin_impact']['characters'] != null) {
      characters = new List<Character>();
      json['genshin_impact']['characters'].forEach((v) {
        characters.add(new Character.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.characters != null) {
      data['characters'] = this.characters.map((v) => v.toJson());
    }
    return data;
  }
}

class Character {
  String id;
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

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
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

    return data;
  }
}
