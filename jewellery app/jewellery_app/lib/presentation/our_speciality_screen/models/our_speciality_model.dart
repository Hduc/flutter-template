import '../../../core/utils/image_constant.dart';
import 'our_speciality_item_model.dart';

/// This class defines the variables used in the [our_speciality_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurSpecialityModel {
  // Rx<List<OurSpecialityItemModel>> ourSpecialityItemList =
  //     Rx(List.generate(6, (index) => OurSpecialityItemModel()));

  static List<OurSpecialityItemModel> getOurSpeciality() {
    return [
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality1st,
          "Education concept with book",
          "4.3",
          "\$19.00",
          "\$25.00",
          "16%",
          "10",
          true,
          false,
          false),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality2nd,
          "Diamond ring isolated lamsd.",
          "5.0",
          "\$12.00",
          "\$25.00",
          "30%",
          "10",
          true,
          false,
          false),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality3rd,
          "The brand diamond ",
          "0.00",
          "\$24.00",
          "\$29.00",
          "12%",
          "10",
          false,
          false,
          true),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality4th,
          "Luxury necklace on jewelry stand necklace",
          "5.0",
          "\$18.00",
          "\$25.00",
          "13%",
          "10",
          true,
          false,
          false),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality5th,
          "Metal ofautomobile pump",
          "4.3",
          "\$28.00",
          "\$30.00",
          "23%",
          "10",
          true,
          false,
          true),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality6th,
          "Black front sweater",
          "4.2",
          "\$28.00",
          "\$38.00",
          "14%",
          "10",
          false,
          false,
          false),
    ];
  }
}
