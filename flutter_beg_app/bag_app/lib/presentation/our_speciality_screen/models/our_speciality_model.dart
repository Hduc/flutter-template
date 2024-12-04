
import '../../../core/utils/image_constant.dart';
import 'our_speciality_item_model.dart';

/// This class defines the variables used in the [our_speciality_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurSpecialityModel {
  // Rx<List<OurSpecialityItemModel>> ourSpecialityItemList =
  //     Rx(List.generate(6, (index) => OurSpecialityItemModel()));


  static List<OurSpecialityItemModel> getOurSpeciality(){
    return [
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality1st,"Karia backpack","4.3","\$19.00","\$25.00","13%","10",true,true,true),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality5th,"Wildcraft ","4.3","\$21.00","\$25.00","14%","10",false,false,false),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality3rd,"Shoulder backpack","4.3","\$24.00","\$25.00","12%","10",false,false,false),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality4th,"Briefcase","4.3","\$22.00","\$25.00","13%","10",false,false,true),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality1st,"Karia backpack","4.3","\$19.00","\$25.00","13%","10",false,false,false),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality2nd,"Wildcraft","4.3","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
