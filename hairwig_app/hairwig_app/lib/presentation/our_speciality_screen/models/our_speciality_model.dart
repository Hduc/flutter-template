
import '../../../core/utils/image_constant.dart';
import 'our_speciality_item_model.dart';

/// This class defines the variables used in the [our_speciality_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurSpecialityModel {
  // Rx<List<OurSpecialityItemModel>> ourSpecialityItemList =
  //     Rx(List.generate(6, (index) => OurSpecialityItemModel()));


  static List<OurSpecialityItemModel> getOurSpeciality(){
    return [
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality1st,"Steam processed per..","0.00","\$19.00","\$25.00","13%","10",true,true,true),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality5th,"Headband Wigs pink ","0.00","\$21.00","\$25.00","14%","10",false,false,false),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality3rd,"Efforteless elegance ..","0.00","\$24.00","\$25.00","12%","10",false,false,false),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality4th,"Sleek&chic headband","0.00","\$22.00","\$25.00","13%","10",false,false,true),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality5th,"Wigs","0.00","\$19.00","\$25.00","13%","10",false,false,false),
      OurSpecialityItemModel(ImageConstant.imgOurSpeciality6th,"Wildcraft","0.00","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
