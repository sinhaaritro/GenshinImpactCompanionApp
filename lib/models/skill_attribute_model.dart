class SkillAttribute {
  String name;
  String value;

  SkillAttribute.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    value = json['value'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;

    return data;
  }
}
