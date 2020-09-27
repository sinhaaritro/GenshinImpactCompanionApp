class WeaponStatScalling {
  static List<List<String>> baseAttackScallingList;
  static List<List<String>> secondaryPercentageScallingList;
  static List<List<String>> secondaryElementalScallingList;

  WeaponStatScalling.fromJsonBaseAttackScalling(Map<String, dynamic> json) {
    if (json['genshin_impact']['general']['weapon_base_attack_scalling'] !=
        null) {
      baseAttackScallingList = <List<String>>[];
      json['genshin_impact']['general']['weapon_base_attack_scalling']
          .forEach((v) {
        final List<String> list = List<String>.from(v);
        baseAttackScallingList.add(list);
      });
    }
  }

  WeaponStatScalling.fromJsonSecondaryPercentageAttackScalling(
      Map<String, dynamic> json) {
    if (json['genshin_impact']['general']
            ['weapon_secondary_percentage_scalling'] !=
        null) {
      secondaryPercentageScallingList = <List<String>>[];
      json['genshin_impact']['general']['weapon_secondary_percentage_scalling']
          .forEach((v) {
        final List<String> list = List<String>.from(v);
        secondaryPercentageScallingList.add(list);
      });
    }
  }

  WeaponStatScalling.fromJsonSecondaryElementalAttackScalling(
      Map<String, dynamic> json) {
    if (json['genshin_impact']['general']
            ['weapon_secondary_elemental_scalling'] !=
        null) {
      secondaryElementalScallingList = <List<String>>[];
      json['genshin_impact']['general']['weapon_secondary_elemental_scalling']
          .forEach((v) {
        final List<String> list = List<String>.from(v);
        secondaryElementalScallingList.add(list);
      });
    }
  }

  static String weaponBaseAttackScalling(String value, int weaponLevel) {
    for (final element in baseAttackScallingList) {
      if (element[0] == value) {
        return element.length >= weaponLevel ? element[weaponLevel] : "Unknown";
      }
    }
    return 'Unknown';
  }

  static String weaponSecondaryPercentageScalling(
      String value, int weaponLevel) {
    for (final element in secondaryPercentageScallingList) {
      if (element[0] == value) {
        return element.length >= weaponLevel ? element[weaponLevel] : "Unknown";
      }
    }
    return 'Unknown';
  }

  static String weaponSecondaryElementalScalling(
      String value, int weaponLevel) {
    for (final element in secondaryElementalScallingList) {
      if (element[0] == value) {
        return element.length >= weaponLevel ? element[weaponLevel] : "Unknown";
      }
    }
    return 'Unknown';
  }
}
