import 'package:GenshinImpactCompanionApp/models/character_model.dart';

class CharacterList {
  static List<Character> characters;

  CharacterList.fromJson(Map<String, dynamic> json) {
    if (json['genshin_impact']['characters'] != null) {
      characters = <Character>[];
      json['genshin_impact']['characters'].forEach((v) {
        characters.add(Character.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (CharacterList.characters != null) {
      data['characters'] =
          CharacterList.characters.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
