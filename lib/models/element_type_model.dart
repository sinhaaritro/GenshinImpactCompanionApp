import 'package:flutter/material.dart';

class ElementTypeModel {
  static String elementTypeAsset(String element) {
    String elementAsset;
    switch (element.toLowerCase()) {
      case 'anemo':
        {
          elementAsset = 'Anemo';
        }
        break;

      case 'cryo':
        {
          elementAsset = 'Cryo';
        }
        break;

      case 'dendro':
        {
          elementAsset = 'Dendro';
        }
        break;

      case 'electro':
        {
          elementAsset = 'Electro';
        }
        break;

      case 'geo':
        {
          elementAsset = 'Geo';
        }
        break;
      case 'hydro':
        {
          elementAsset = 'Hydro';
        }
        break;
      case 'pyro':
        {
          elementAsset = 'Pyro';
        }
        break;
    }
    return 'assets/images/Element_$elementAsset.png';
  }

  static Color elementTypeColor(String element) {
    Color elementColor;
    switch (element.toLowerCase()) {
      case 'anemo':
        {
          elementColor = Colors.lightGreen;
        }
        break;

      case 'cryo':
        {
          elementColor = Colors.lightGreen;
        }
        break;

      case 'dendro':
        {
          elementColor = Colors.lightGreen;
        }
        break;

      case 'electro':
        {
          elementColor = Colors.lightGreen;
        }
        break;

      case 'geo':
        {
          elementColor = Colors.lightGreen;
        }
        break;
      case 'hydro':
        {
          elementColor = Colors.lightGreen;
        }
        break;
      case 'pyro':
        {
          elementColor = Colors.lightGreen;
        }
        break;
    }
    return elementColor;
  }
}
