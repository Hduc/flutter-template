import 'package:get/get.dart';import 'package:investment_app/data/models/selectionPopupModel/selection_popup_model.dart';import 'listone1_item_model.dart';class WithdrawWithdrawAmountModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<Listone1ItemModel> listone1ItemList = RxList.filled(3,Listone1ItemModel());

 }
