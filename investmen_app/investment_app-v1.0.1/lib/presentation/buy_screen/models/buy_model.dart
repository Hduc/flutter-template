import 'package:get/get.dart';import 'package:investment_app/data/models/selectionPopupModel/selection_popup_model.dart';import 'buy_item_model.dart';class BuyModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<BuyItemModel> buyItemList = RxList.filled(3,BuyItemModel());

 }
