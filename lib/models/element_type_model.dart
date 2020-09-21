class ElementTypeModel {
  String elementTypeAsset(String element) {
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
}
