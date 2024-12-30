
import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';
import 'OTPPage.dart';

import 'SizeConfig.dart';






import 'generated/l10n.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPage createState() {
    return _ForgotPasswordPage();
  }
}

class _ForgotPasswordPage extends State<ForgotPasswordPage> {
  int themeMode = 0;
  TextEditingController phoneController = new TextEditingController();
  String countryCode = "IN";

  Future<bool> _requestPop() {
    Navigator.of(context).pop();

    return new Future.value(false);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);



    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgDarkWhite,
          appBar: AppBar(
            backgroundColor: bgDarkWhite,
            elevation: 0,
            toolbarHeight: 0,
            title: Text(""),


          ),
          body: Container(
            child: Column(
              children: [
                ConstantWidget.getLoginAppBar(context,function: _requestPop),

                Expanded(
                  flex: 1,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: ConstantWidget.getWidthPercentSize(context, 3)),

                    children: [
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 2.5),
                      ),
                      ConstantWidget.getTextWidget(
                          'Forgot Password',
                          textColor,
                          TextAlign.left,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 3)),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 1.4),
                      ),

                      ConstantWidget.getTextWidget(
                          "We need your mobile number for reset password!",
                          textColor,
                          TextAlign.left,
                          FontWeight.w400,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 4),
                      ),
                      getDefaultPhoneNumberWidget(context, S.of(context).phoneNumber, phoneController),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 2),
                      ),
                      ConstantWidget.getButtonWidget(
                          context, 'Submit', blueButton, () {
                        checkValidation();
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
  Widget getDefaultPhoneNumberWidget(BuildContext context, String s,
      TextEditingController textEditingController) {
    double height = ConstantWidget.getDefaultButtonSize(context);

    double radius = ConstantWidget.getPercentSize(height, 20);
    double fontSize = ConstantWidget.getPercentSize(height, 27);
    FocusNode myFocusNode = FocusNode();

    Color color = borderColor;


    return StatefulBuilder(
      builder: (context, setState) {
        myFocusNode.addListener((){

          print("focus---${myFocusNode.hasFocus}---$s");


          setState((){
            if(myFocusNode.hasFocus){
              color=primaryColor;
            }else{
              color = borderColor;
            }
          });

        });
        return Container(
          height: height,
          margin:
          EdgeInsets.symmetric(vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),
          alignment: Alignment.centerLeft,

          decoration: getDefaultDecoration(radius: radius,borderColor:  color),

          //
          // decoration: ShapeDecoration(
          //   color: Colors.transparent,
          //   shape: SmoothRectangleBorder(
          //     side: BorderSide(
          //         color: color, width: 1
          //
          //     ),
          //     borderRadius: SmoothBorderRadius(
          //       cornerRadius: radius,
          //       cornerSmoothing: 0.8,
          //     ),
          //   ),
          // ),


          child: Row(
            children: [

              SizedBox(width: ConstantWidget.getWidthPercentSize(context, 2.5),),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(radius),
                  ),
                ),
                child: CountryCodePicker(
                  boxDecoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  closeIcon: Icon(Icons.close,
                      size: ConstantWidget.getScreenPercentSize(
                          context, 3),
                      color: Colors.black),

                  onChanged: (value) {
                    countryCode = value.dialCode!;
                  },
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IN',
                  padding: EdgeInsets.zero,

                  searchStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: Constants.fontsFamily),
                  searchDecoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintStyle: TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                          fontFamily: Constants.fontsFamily)),
                  textStyle: TextStyle(
                      fontSize: fontSize,

                      color: textColor,
                      fontFamily: Constants.fontsFamily),
                  dialogTextStyle: TextStyle(
                      color: textColor,
                      fontSize: fontSize,

                      fontFamily: Constants.fontsFamily),

                  showFlagDialog: true,
                  hideSearch: true,
                  flagWidth: ConstantWidget.getWidthPercentSize(context, 5),
                  comparator: (a, b) => b.name!.compareTo(a.name!),

                  onInit: (code) {
                    countryCode = code!.dialCode!;

                    print(
                        "on init ${code.name} ${code.dialCode} ${code.name}");
                  },
                ),
              ),

              Icon(Icons.keyboard_arrow_down,
                  size: ConstantWidget.getScreenPercentSize(
                      context, 3),
                  color: textColor),
              Expanded(
                flex: 1,
                child: Focus(
                  onFocusChange: (hasFocus) {

                  },
                  child: TextFormField(
                    focusNode: myFocusNode,
                    maxLines: 1,
                    controller: textEditingController,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ], //
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                        fontFamily: Constants.fontsFamily,
                        color: textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: fontSize),
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: ConstantWidget.getWidthPercentSize(context, 4)),
                        border: OutlineInputBorder(),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: s,

                        isDense: true,
                        hintStyle: TextStyle(
                            fontFamily: Constants.fontsFamily,
                            color: subTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: fontSize)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  void checkValidation() {
    // FocusScopeNode currentFocus = FocusScope.of(context);
    // if (!currentFocus.hasPrimaryFocus) {
    //   currentFocus.unfocus();
    // }
    // if (ConstantUrl.isNotEmpty(phoneController.text)) {
      checkNetwork();
    // } else {
    //   ConstantUrl.showToast(S.of(context).fillDetails, context);
    // }
  }

  checkNetwork() async {
    // bool isNetwork = await ConstantUrl.getNetwork();
    // if (isNetwork) {
      forgotPassword();
    // } else {
    //   getNoInternet(context);
    // }
  }

  Future<void> forgotPassword() async {
   
    //
    // DialogUtil dialogUtil = new DialogUtil(context);
    // dialogUtil.showLoadingDialog();
    //
    // Map data = {
    //   ConstantUrl.paramMobile: countryCode + phoneController.text,
    //
    // };
    //
    // final response = await http.post(Uri.parse(ConstantUrl.forgotPasswordUrl), body: data);
    //
    // if (response.statusCode == 200) {
    //   print("res--" + response.body.toString());
    //
    //   Map<String, dynamic> map = json.decode(response.body);
    //
    //
    //
    //   ForgotPasswordModel user = ForgotPasswordModel.fromJson(map);
    //
    //
    //
    //   dialogUtil.dismissLoadingDialog();
    //   if (user.data!.success == 1) {
        sendPage();
    //   }
    //
    //   if (user.data!.forgotpassword != null) {
    //     ConstantUrl.showToast(user.data!.forgotpassword!.error!, context);
    //   }
    //   print("res--1" + user.toString());
    //
    // }


  }

  void sendPage() {

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OTPPage(
            countryCode + phoneController.text,phoneController.text
          ),
        ));
  }
}
