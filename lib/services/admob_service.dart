import 'package:GenshinImpactCompanionApp/services/admob_id.dart';
import 'package:firebase_admob/firebase_admob.dart';

const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  nonPersonalizedAds: true,
);

InterstitialAd createInterstitialAd() {
  return InterstitialAd(
      adUnitId: interstitialAdId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd $event");
      });
}

BannerAd createBannerAd() {
  return BannerAd(
      adUnitId: bannerAdId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd $event");
      });
}
