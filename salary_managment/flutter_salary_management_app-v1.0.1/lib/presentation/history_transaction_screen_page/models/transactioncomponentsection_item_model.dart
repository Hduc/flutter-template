import '../../../core/app_export.dart';/// This class is used in the [transactioncomponentsection_item_widget] screen.
class TransactioncomponentsectionItemModel {TransactioncomponentsectionItemModel({this.icPhone, this.userName, this.transactionStatus, this.transactionAmount, this.id, }) { icPhone = icPhone  ?? Rx(ImageConstant.imgIcPhone);userName = userName  ?? Rx("Esther howard");transactionStatus = transactionStatus  ?? Rx("Recharge complete");transactionAmount = transactionAmount  ?? Rx("-500.00");id = id  ?? Rx(""); }

Rx<String>? icPhone;

Rx<String>? userName;

Rx<String>? transactionStatus;

Rx<String>? transactionAmount;

Rx<String>? id;

 }
