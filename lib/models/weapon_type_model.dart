class WeaponTypeModel {
  String weaponTypeAsset(String weapon) {
    String weaponAsset;
    switch (weapon.toLowerCase()) {
      case 'sword':
        {
          weaponAsset = 'Dull_Blade';
        }
        break;

      case 'bow':
        {
          weaponAsset = 'Hunters_Bow';
        }
        break;

      case 'polearm':
        {
          weaponAsset = 'Beginners_Protector';
        }
        break;

      case 'claymore':
        {
          weaponAsset = 'Waster_Greatsword';
        }
        break;

      case 'catalyst':
        {
          weaponAsset = 'Apprentices_Notes';
        }
        break;
    }
    return 'assets/images/Weapon_$weaponAsset.png';
  }
}
