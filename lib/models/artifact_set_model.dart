class ArtifactSetList {
  static List<ArtifactSet> artifactSets;

  ArtifactSetList.fromJson(Map<String, dynamic> json) {
    if (json['genshin_impact']['artifacts_sets_4_piece'] != null) {
      artifactSets = <ArtifactSet>[];
      json['genshin_impact']['artifacts_sets_4_piece'].forEach((v) {
        artifactSets.add(ArtifactSet.fromJson(v));
      });
    }
  }
}

class ArtifactSet {
  String name;
  String bonus_2;
  String bonus_4;
  String flowerName;
  String flowerIcon;
  String featherName;
  String featherIcon;
  String timeName;
  String timeIcon;
  String gobletName;
  String gobletIcon;
  String tiaraName;
  String tiaraIcon;

  ArtifactSet.fromJson(Map<String, dynamic> json) {
    name = json['set_name'] as String;
    bonus_2 = json['2bonus'] as String;
    bonus_4 = json['4bonus'] as String;
    flowerName = json['flower_name'] as String;
    flowerIcon = json['flower_icon'] as String;
    featherName = json['feather_name'] as String;
    featherIcon = json['feather_icon'] as String;
    timeName = json['time_name'] as String;
    timeIcon = json['time_icon'] as String;
    gobletName = json['goblet_name'] as String;
    gobletIcon = json['goblet_icon'] as String;
    tiaraName = json['tiara_name'] as String;
    tiaraIcon = json['tiara_icon'] as String;
  }
}
