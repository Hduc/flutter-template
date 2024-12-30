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
        "The professional specialists hair wigs",
        "Get an overview of how you are perfoming motivate yourself to achieve even moew."),
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding2nd,
        "Style that fit your daily lifestyle",
        "Our collection of ready-to-wear wigs is specially designed for women."),
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding3rd,
        "Textures You Can't Find Anywhere Else",
        "We have a large variety of hair textures that range from the silkiest kinkiest curl with coverage options."),
   ];
  }
}
