class SkillTypeModel {
  static String activeSkillType(int n) {
    final List<String> skillSubtitle = [
      'Normal Attack',
      'Elemental Skill',
      'Elemental Burst'
    ];
    return skillSubtitle[n];
  }

  static String passiveSkillType(int n) {
    final List<String> skillSubtitle = [
      'Unlocked at Ascension 1',
      'Unlocked at Ascension 4',
      'Unlocked Automatically'
    ];
    return skillSubtitle[n];
  }

  static String constellationsSkillType(int n) {
    final List<String> skillSubtitle = [
      'Constellation Lv. 1',
      'Constellation Lv. 2',
      'Constellation Lv. 3',
      'Constellation Lv. 4',
      'Constellation Lv. 5',
      'Constellation Lv. 6',
    ];
    return skillSubtitle[n];
  }
}
