import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:flutter/material.dart';

class SkillAttributeTable extends StatelessWidget {
  final List<SkillAttribute> skillAttributes;

  const SkillAttributeTable({
    Key key,
    this.skillAttributes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return skillAttributes == null
        ? const SizedBox()
        : SizedBox(
            width: double.infinity,
            child: DataTable(
              headingRowHeight: 0.0,
              columns: const <DataColumn>[
                DataColumn(label: Text(""), numeric: false),
                DataColumn(label: Text(""), numeric: false),
              ],
              rows: skillAttributes
                  .map((skillAttribute) => DataRow(cells: [
                        DataCell(Text(skillAttribute.name)),
                        DataCell(Text(skillAttribute.value)),
                      ]))
                  .toList(),
            ),
          );
  }
}
