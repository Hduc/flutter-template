import '../../../core/app_export.dart';/// This class is used in the [closelist_item_widget] screen.
class CloselistItemModel {CloselistItemModel({this.close, this.userName, this.rechargeStatus, this.amount, this.id, }) { close = close  ?? Rx(ImageConstant.imgClosePurple300);userName = userName  ?? Rx("Salary bonus");rechargeStatus = rechargeStatus  ?? Rx("income");amount = amount  ?? Rx("2040.00");id = id  ?? Rx(""); }

Rx<String>? close;

Rx<String>? userName;

Rx<String>? rechargeStatus;

Rx<String>? amount;

Rx<String>? id;

 }
