import 'package:GenshinImpactCompanionApp/models/weapon_list_model.dart';
import 'package:GenshinImpactCompanionApp/models/weapon_stat_scalling_model.dart';
import 'package:GenshinImpactCompanionApp/screens/weapon_detail_screen/weapon_detail_screen.dart';
import 'package:GenshinImpactCompanionApp/services/fetch_data.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/item_card/item_card.dart';
import 'package:flutter/material.dart';

class WeaponListScreen extends StatefulWidget {
  @override
  _WeaponListScreenState createState() => _WeaponListScreenState();
}

class _WeaponListScreenState extends State<WeaponListScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    if (FetchData.decodedJson == null) await FetchData.fetchData();
    WeaponList.fromJson(FetchData.decodedJson);

    WeaponStatScalling.fromJsonBaseAttackScalling(FetchData.decodedJson);
    WeaponStatScalling.fromJsonSecondaryElementalAttackScalling(
        FetchData.decodedJson);
    WeaponStatScalling.fromJsonSecondaryPercentageAttackScalling(
        FetchData.decodedJson);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WeaponList.weapons == null
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
