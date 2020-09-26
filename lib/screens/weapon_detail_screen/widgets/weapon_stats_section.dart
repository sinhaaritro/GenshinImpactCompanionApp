import 'dart:math';

import 'package:GenshinImpactCompanionApp/models/weapon_list_model.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:flutter/material.dart';

class WeaponStatsSection extends StatefulWidget {
  final Weapon weapon;

  const WeaponStatsSection({Key key, this.weapon}) : super(key: key);

  @override
  _WeaponStatsSectionState createState() => _WeaponStatsSectionState();
}

class _WeaponStatsSectionState extends State<WeaponStatsSection> {
  double _passiveLevelValue = 1;
  double _weaponLevelValue = 1;
  bool _isAsscended = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Stats",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const StatsTitle(text: "Weapon Level"),
                  Slider(
                    value: _weaponLevelValue,
                    min: 1,
                    max: 9,
                    divisions: 8,
                    label: (_weaponLevelValue * 10).round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _weaponLevelValue = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Row(
                children: const <Widget>[
                  StatsTitle(text: "Base Attack"),
                  StatsTitle(text: "Ascension Done"),
                ],
              ),
              Row(
                children: [
                  StatsValue(text: widget.weapon.baseStat),
                  Expanded(
                    child: Column(
                      children: [
                        Switch(
                          value: _isAsscended,
                          onChanged: (newValue) {
                            setState(() {
                              _isAsscended = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                children: const <Widget>[
                  StatsTitle(text: "Secondary Stat Type"),
                  StatsTitle(text: "Secondary Stat"),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  StatsValue(text: widget.weapon.secondaryStatType),
                  StatsValue(text: widget.weapon.secondaryStat),
                ],
              ),
              const SizedBox(height: 24.0),
              Row(
                children: const <Widget>[
                  StatsTitle(text: "Passive Name"),
                  StatsTitle(text: "Passive Level"),
                ],
              ),
              Row(
                children: [
                  StatsValue(text: widget.weapon.passiveName),
                  Expanded(
                    child: Slider(
                      value: _passiveLevelValue,
                      min: 1,
                      max: 5,
                      divisions: 4,
                      label: _passiveLevelValue.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          _passiveLevelValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              TextParser(
                  text:
                      "Effect:\n ${widget.weapon.passiveEffect[(_passiveLevelValue.toInt() - 1)]}"),
              Visibility(
                visible: _passiveLevelValue.toInt() - 1 != 4,
                child: TextParser(
                    text:
                        "Mora Cost: ${500 * pow(2, _passiveLevelValue.toInt() - 1)}"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class StatsTitle extends StatelessWidget {
  final String text;

  const StatsTitle({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

class StatsValue extends StatelessWidget {
  final String text;

  const StatsValue({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
