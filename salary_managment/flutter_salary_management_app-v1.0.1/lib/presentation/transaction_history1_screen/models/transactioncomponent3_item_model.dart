import '../../../core/app_export.dart';/// This class is used in the [transactioncomponent3_item_widget] screen.
class Transactioncomponent3ItemModel {Transactioncomponent3ItemModel({this.phoneIcon, this.userName, this.transactionStatus, this.transactionAmount, this.id, }) { phoneIcon = phoneIcon  ?? Rx(ImageConstant.imgIcPhone);userName = userName  ?? Rx("Esther howard");transactionStatus = transactionStatus  ?? Rx("Recharge complete");transactionAmount = transactionAmount  ?? Rx("-500.00");id = id  ?? Rx(""); }

Rx<String>? phoneIcon;

Rx<String>? userName;

Rx<String>? transactionStatus;

Rx<String>? transactionAmount;

Rx<String>? id;

 }
