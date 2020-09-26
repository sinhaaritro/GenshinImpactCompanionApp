import 'dart:convert';
import 'package:GenshinImpactCompanionApp/models/weapon_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/weapon_detail_screen/weapon_detail_screen.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/item_card/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class WeaponListScreen extends StatefulWidget {
  @override
  _WeaponListScreenState createState() => _WeaponListScreenState();
}

class _WeaponListScreenState extends State<WeaponListScreen> {
  WeaponList _weaponList;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final String jsonString =
        await rootBundle.loadString('assets/text/genshin_impact_data.json');
    final decodedJson = jsonDecode(jsonString);

    _weaponList = WeaponList.fromJson(decodedJson);
    // print(decodedJson);
    // print('object');
    // print(_weaponList.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _weaponList == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 16.0,
                children: WeaponList.weapons
                    .map(
                      (weapon) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WeaponDetail(
                                weapon: weapon,
                              ),
                            ),
                          );
                        },
                        child: ItemCard(
                          itemName: weapon.name,
                          itemCardImage: weapon.icon,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          );
  }
}
