import 'package:GenshinImpactCompanionApp/services/admob_id.dart';
import 'package:firebase_admob/firebase_admob.dart';

// Create a file called admob_id.dart
// Write down the 3 variables and save it
// const String appId = '';
// const String interstitialAdId = '';
// const String bannerAdId = '';

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
      // adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd $event");
      });
}
