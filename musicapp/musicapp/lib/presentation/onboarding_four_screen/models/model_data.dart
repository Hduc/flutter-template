import '../../../core/utils/image_constant.dart';
import 'onboarding_four_model.dart';

class Onboarding{
  static List<OnboardingData> getOnboardingData(){
    return [
      OnboardingData(ImageConstant.imgOnboarding1st,ImageConstant.imgOnboarding1stDark,"Enjoy your music","Stream your favorite tunes on the go at anytime with premium."),
      OnboardingData(ImageConstant.imgOnboarding2nd,ImageConstant.imgOnboarding2ndDark,"Listen ad free","Enjoy ad free listening and jarn out to your favorites songs."),
      OnboardingData(ImageConstant.imgOnboarding3rd,ImageConstant.imgOnboarding3rdDark,"First month on us","Enjoy ad free listening and jarn out to your favorites songs."),
    ];

  }
}