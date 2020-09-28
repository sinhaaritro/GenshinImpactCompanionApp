class RegKeywordsTags {
  static const String headingTags =
      r"\bNormal Attack:|\bCharged Attack:|\bPlunging Attack:|\bHold:|\bPress:|\bElemental Absorption:|\bCook:|\bThunderbeast's Targe:|\bTap:|\bShort Hold:|\bLong Hold:|\bLightning Stiletto:|\bJade Screen:|\bThe Wolf Within:";
  static const String inParagraphTags = r"\bDEF|\bDMG|\bAOE|\bRES|\bATK";
  static const String elementAnemoPattern = r"\bAnemo ";
  static const String elementCryoPattern = r"\bCryo ";
  static const String elementDendroPattern = r"\bDendro ";
  static const String elementElectroPattern = r"\bElectro ";
  static const String elementGeoPattern = r"\bGeo ";
  static const String elementHydroPattern = r"\bHydro ";
  static const String elementPyroPattern = r"\bPyro ";
  static const String passiveName = r"\bEffect:|\bMora Cost:";
  static const String artifactBonus = r"\b2 Piece Bonus:|\b4 Piece Bonus:";
}
