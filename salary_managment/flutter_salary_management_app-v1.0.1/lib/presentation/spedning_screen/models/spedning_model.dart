import '../../../core/app_export.dart';
import 'closegrid_item_model.dart';

/// This class defines the variables used in the [spedning_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SpedningModel {
  Rx<List<ClosegridItemModel>> closegridItemList = Rx([
    ClosegridItemModel(
        close: ImageConstant.salary.obs,
        userName: "Salary credit".obs,
        rechargeStatus: "income".obs,
        amount: "2040.00".obs),
    ClosegridItemModel(
        close: ImageConstant.lesils.obs,
        userName: "Leslie alexander".obs,
        rechargeStatus: "Recharge complete".obs,
        amount: "-400.00".obs),
    ClosegridItemModel(
        close: ImageConstant.spendingThree.obs,
        userName: "November salary".obs,
        rechargeStatus: "income".obs,
        amount: "24000.00".obs),
    ClosegridItemModel(
        close: ImageConstant.spendingFour.obs,
        userName: "Raj Imperial, inox".obs,
        rechargeStatus: "Ticket booking".obs,
        amount: "-400.00".obs),
    ClosegridItemModel(
        close: ImageConstant.spendingFive.obs,
        userName: "Salary credit".obs,
        rechargeStatus: "income".obs,
        amount: "2500.00".obs),
    ClosegridItemModel(
        close: ImageConstant.spendingSix.obs,
        userName: "Salary bonus".obs,
        rechargeStatus: "income".obs,
        amount: "400.00".obs),
    ClosegridItemModel(
        close: ImageConstant.sendingSeven.obs,
        userName: "Coffee shop".obs,
        rechargeStatus: "General spend".obs,
        amount: "-400.00".obs),
    ClosegridItemModel(
        close: ImageConstant.spendingEght.obs,
        userName: "Salary credit".obs,
        rechargeStatus: "income".obs,
        amount: "4000.00".obs),
    ClosegridItemModel(
        close: ImageConstant.spendingNign.obs,
        userName: "Salary bonus".obs,
        rechargeStatus: "income".obs,
        amount: "2040.00".obs),
    ClosegridItemModel(
        close: ImageConstant.sendingTen.obs,
        userName: "Leslie alexander".obs,
        rechargeStatus: "Recharge complete".obs,
        amount: "-400.00".obs)
  ]);
}
