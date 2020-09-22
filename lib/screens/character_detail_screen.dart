import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';
import 'package:GenshinImpactCompanionApp/models/rarity_model.dart';
import 'package:GenshinImpactCompanionApp/models/weapon_type_model.dart';
import 'package:GenshinImpactCompanionApp/models/skill_type_model.dart';
import 'package:flutter/material.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;

  CharacterDetail({this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(padding: EdgeInsets.all(0.0), children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/Character_Default_Card.png'),
            ),
            Expanded(
              flex: 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Rarity",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      RarityModel.rarityAsset(character.rarity),
                    ),
                    SizedBox(height: 26),
                    Text(
                      "Element",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      ElementTypeModel.elementTypeAsset(character.element),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(height: 26),
                    Text(
                      "Weapon",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      WeaponTypeModel.weaponTypeAsset(character.weapon),
                      height: 50,
                      width: 50,
                    ),
                  ]),
            )
          ],
        ),
        ExpansionTile(
            title: Text(
              "Overview",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            initiallyExpanded: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        Expanded(
                          child: KeyValues(
                            message: "Gender",
                            imageAsset: 'assets/images/Icon_Gender.png',
                            value: character.gender,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: KeyValues(
                              message: "Birthday",
                              imageAsset: 'assets/images/Icon_Birthday.png',
                              value: character.birthday),
                        ),
                      ]),
                      SizedBox(height: 10.0),
                      Row(children: [
                        Expanded(
                          child: KeyValues(
                              message: "Region",
                              imageAsset: 'assets/images/Icon_Map.png',
                              value: character.region),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: KeyValues(
                              message: "Constellation",
                              imageAsset:
                                  'assets/images/Icon_Constellation.png',
                              value: character.constellation),
                        ),
                      ]),
                      SizedBox(height: 10.0),
                      Row(children: [
                        Expanded(
                          child: KeyValues(
                              message: "Affiliation",
                              imageAsset: 'assets/images/Icon_Affiliation.png',
                              value: character.affiliation),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: KeyValues(
                              message: "Titles",
                              imageAsset: 'assets/images/Icon_Title.png',
                              value: character.title),
                        ),
                      ]),
                      SizedBox(height: 10.0),
                      Divider(),
                      SizedBox(height: 10.0),
                      Text(
                        'Ingame Description',
                        style: TextStyle(fontSize: 21),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        character.shortdesc,
                      )
                    ]),
              ),
            ]),
        ExpansionTile(
            title: Text(
              "Skills",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            initiallyExpanded: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SkillCardGroup(
                        skillGroupName: "Active Skill",
                        skills: character.activeSkills,
                        skillSubtitle: SkillTypeModel.activeSkillType,
                      ),
                      SkillCardGroup(
                        skillGroupName: "Passive Skill",
                        skills: character.passiveSkills,
                        skillSubtitle: SkillTypeModel.passiveSkillType,
                      ),
                      SkillCardGroup(
                        skillGroupName: "Constellations",
                        skills: character.constellationSkills,
                        skillSubtitle: SkillTypeModel.constellationsSkillType,
                      ),
                    ]),
              ),
            ]),
        ExpansionTile(
            title: Text(
              "Stats",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            initiallyExpanded: false,
            children: [
              Container(
                child: Text(character.gender),
              ),
            ]),
      ]),
    );
  }
}

class SkillCardGroup extends StatelessWidget {
  const SkillCardGroup(
      {Key key, this.skillGroupName, this.skills, this.skillSubtitle})
      : super(key: key);

  final String skillGroupName;
  final Function skillSubtitle;
  final List skills;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          skillGroupName,
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      Column(
        children: skills
            .asMap()
            .entries
            .map((e) => Card(
                  child: ExpansionTile(
                    leading: Image.asset(
                      'assets/images/Icon_Map.png',
                      height: 40,
                    ),
                    title: Text(e.value.name),
                    subtitle: Text(skillSubtitle(e.key)),
                    childrenPadding: EdgeInsets.all(12.0),
                    children: [Text(e.value.desc)],
                  ),
                ))
            .toList(),
      )
    ]);
  }
}

class KeyValues extends StatelessWidget {
  const KeyValues({Key key, this.message, this.imageAsset, this.value})
      : super(key: key);

  final String message;
  final String imageAsset;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Tooltip(
          message: message,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                imageAsset,
                height: 30,
                width: 30,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: Text(
                value,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
