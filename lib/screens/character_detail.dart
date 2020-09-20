import 'package:flutter/material.dart';
import 'package:GenshinImpactCompanionApp/models/character_model.dart';
import 'package:GenshinImpactCompanionApp/models/rarity_model.dart';
import 'package:GenshinImpactCompanionApp/models/weapon_type_model.dart';
import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';

class CharacterDetail extends StatefulWidget {
  final Character character;

  CharacterDetail({this.character});

  @override
  _CharacterDetailState createState() => _CharacterDetailState();
}

class _CharacterDetailState extends State<CharacterDetail> {
  @override
  Widget build(BuildContext context) {
    RarityModel _rarityModel = new RarityModel();
    WeaponTypeModel _weaponTypeModel = new WeaponTypeModel();
    ElementTypeModel _elementTypeModel = new ElementTypeModel();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(children: [
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
                      _rarityModel.rarityAsset(widget.character.rarity),
                    ),
                    SizedBox(height: 26),
                    Text(
                      "Element",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      _elementTypeModel
                          .elementTypeAsset(widget.character.element),
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
                      _weaponTypeModel.weaponTypeAsset(widget.character.weapon),
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
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                child: Column(children: [
                  Row(children: [
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Tooltip(
                              message: "Gender",
                              child:
                                  Image.asset('assets/images/Icon_Gender.png')),
                        ),
                        Expanded(
                          child: Text(
                            widget.character.gender,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Tooltip(
                              message: "Birthday",
                              child: Image.asset(
                                  'assets/images/Icon_Birthday.png')),
                        ),
                        Expanded(
                          child: Text(
                            widget.character.birthday,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ]),
                    ),
                  ]),
                  Row(children: [
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Tooltip(
                              message: "Region",
                              child: Image.asset('assets/images/Icon_Map.png')),
                        ),
                        Expanded(
                          child: Text(
                            widget.character.region,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Tooltip(
                            message: "Constellation",
                            child: Image.asset(
                                'assets/images/Icon_Constellation.png'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.character.constellation,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ]),
                    ),
                  ]),
                  Row(children: [
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Tooltip(
                              message: "Affiliation",
                              child: Image.asset(
                                  'assets/images/Icon_Affiliation.png')),
                        ),
                        Expanded(
                          child: Text(
                            widget.character.affiliation,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ]),
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                          child: Tooltip(
                              message: "Titles",
                              child:
                                  Image.asset('assets/images/Icon_Title.png')),
                        ),
                        Expanded(
                          child: Text(
                            widget.character.title,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ]),
                    ),
                  ]),
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
                child: Text(widget.character.gender),
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
                child: Text(widget.character.gender),
              ),
            ]),
      ]),
    );
  }
}
