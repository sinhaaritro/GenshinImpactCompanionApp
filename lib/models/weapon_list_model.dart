class WeaponList {
  static List<Weapon> weapons;

  WeaponList.fromJson(Map<String, dynamic> json) {
    if (json['genshin_impact']['weapons'] != null) {
      weapons = <Weapon>[];
      json['genshin_impact']['weapons'].forEach((v) {
        weapons.add(Weapon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (WeaponList.weapons != null) {
      data['weapons'] = WeaponList.weapons.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Weapon {
  String name;
  String icon;
  String baseStat;
  String secondaryStatType;
  String secondaryStat;
  String desc;
  String passiveName;
  List<String> passiveEffect;
  int rarity;
  String weaponType;

  Weapon.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    icon = json['icon'] as String;
    baseStat = json['base_stat'] as String;
    secondaryStatType = json['secondary_stat_type'] as String;
    secondaryStat = json['secondary_stat'] as String;
    desc = json['description'] as String;
    passiveName = json['passive_name'] as String;
    rarity = json['rarity'] as int;
    weaponType = json['type'] as String;

    if (json['passive_effect'] != null) {
      passiveEffect = <String>[];
      json['passive_effect'].forEach((v) {
        passiveEffect.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['icon'] = icon;
    data['base_stat'] = baseStat;
    data['secondary_stat_type'] = secondaryStatType;
    data['secondary_stat'] = secondaryStat;
    data['description'] = desc;
    data['passive_name'] = passiveName;
    data['rarity'] = rarity;
    data['type'] = weaponType;

    data['passive_effect'] = passiveEffect.toList();
    return data;
  }
}
