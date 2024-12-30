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
        "The bag that goes with you everywhere.",
        "There are things worth being loyal to, surely. For example, coffee."),
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding2nd,
        "Handbags that are reflection of your personality.",
        "There are things worth being loyal to, surely. For example, coffee."),
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding3rd,
        "The bag that's perfect for any occasion.",
        "There are things worth being loyal to, surely. For example, coffee."),
   ];
  }
}
