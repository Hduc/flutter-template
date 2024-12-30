import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'sliderwelcometoinvest_one_item_model.dart';

class OnboardingSixModel {
  RxList<SliderwelcometoinvestOneItemModel> sliderwelcometoinvestOneItemList =
      RxList.filled(1, SliderwelcometoinvestOneItemModel('','','',''));
  static List<SliderwelcometoinvestOneItemModel> getSliderPageData(){
    return [
      SliderwelcometoinvestOneItemModel(ImageConstant.imgOnboarding1,"lbl_welcome_to".tr,"lbl_invest".tr,"The best app to invest in international stocks with as little as \$1.00"),
      SliderwelcometoinvestOneItemModel(ImageConstant.imgOnboarding2,"Get Better Returns","","Inviest in the world's top leading brands & unlock amazing returns of investment."),
      SliderwelcometoinvestOneItemModel(ImageConstant.imgOnboarding3,"Your Safety is first","","Your brokerage account is maintained by Dinvest Pte Ltd")];
  }
}
