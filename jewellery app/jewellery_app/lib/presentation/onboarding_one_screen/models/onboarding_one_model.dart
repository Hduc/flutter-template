import '../../../core/utils/image_constant.dart';
import 'sliderfreshlyba_item_model.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  // Rx<List<SliderfreshlybaItemModel>> sliderfreshlybaItemList =
  //     Rx(List.generate(1, (index) => SliderfreshlybaItemModel()));

  static List<SliderfreshlybaItemModel> sliderfreshlybaItemList() {
    return [
      SliderfreshlybaItemModel(
          ImageConstant.imgOnboarding1st,
          "The best jewelry in the town now.",
          "It is referred as diamond city percent of the world's diamonds are polished in this city."),
      SliderfreshlybaItemModel(
          ImageConstant.imgOnboarding2nd,
          "Choose from our virtual jewelery store.",
          "Jewellery salary in India with less than 1 year of experience to 15 years range."),
      SliderfreshlybaItemModel(
          ImageConstant.imgOnboarding3rd,
          "The discover world’s best jewelery",
          "The individual we introduce to you today has achieved that is simply unparalleled."),
    ];
  }
}
