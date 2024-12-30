

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/services.dart';

import 'package:workout/onlineData/ConstantUrl.dart';

import 'ColorCategory.dart';
import 'ConstantWidget.dart';
import 'Constants.dart';

import 'SignInPage.dart';
import 'SizeConfig.dart';

import 'VerifyCodePage.dart';
import 'generated/l10n.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPage createState() {
    return _SignUpPage();
  }
}

class _SignUpPage extends State<SignUpPage> {
  bool isRemember = false;
  int themeMode = 0;
  TextEditingController phoneController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController textPasswordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  String countryCode = "IN";

  Future<bool> _requestPop() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => SignInPage(),));
    return new Future.value(false);
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      // firstNameController.text = widget.introModel.username!;
    });
 }








  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);



    return GestureDetector(child: WillPopScope(
        child: Scaffold(
          backgroundColor: bgDarkWhite,
          appBar: AppBar(
            backgroundColor: bgDarkWhite,
            toolbarHeight: 0,
            elevation: 0,
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
                         "Sign Up",
                          textColor,
                          TextAlign.left,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 3)),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 1.4),
                      ),

                      ConstantWidget.getTextWidget(
                          "Create Account for meet now Friends!",
                          textColor,
                          TextAlign.left,
                          FontWeight.w400,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 2),
                      ),

                      ConstantWidget.getDefaultTextFiledWidget(
                          context, S.of(context).firstName, firstNameController),
                      ConstantWidget.getDefaultTextFiledWidget(
                          context, S.of(context).lastName, lastNameController),


                      ConstantWidget.getDefaultTextFiledWidget(
                          context, 'Email', emailController),

                      getDefaultPhoneNumberWidget(context, S.of(context).phoneNumber, phoneController),


                      ConstantWidget.getPasswordTextFiled(
                          context, S.of(context).password, textPasswordController),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 3),
                      ),
                      ConstantWidget.getButtonWidget(
                          context, S.of(context).signUpNow, blueButton, () {
                        checkValidation();
                        // _normalProgress(context);
                      }),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 12),
                      ),

                    ],
                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstantWidget.getTextWidget(
                        S.of(context).youHaveAnAlreadyAccount,
                        Colors.black,
                        TextAlign.left,
                        FontWeight.w500,
                        ConstantWidget.getScreenPercentSize(context, 1.8)),
                    SizedBox(
                      width: ConstantWidget.getScreenPercentSize(context, 0.5),
                    ),
                    InkWell(
                      child: ConstantWidget.getTextWidget(
                          S.of(context).signIn,
                          accentColor,
                          TextAlign.start,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ));
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: ConstantWidget.getScreenPercentSize(context, 2),
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop),
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        });
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
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                    ], // Onl
                    controller: textEditingController,
                    textAlign: TextAlign.start,
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
    //
    //
    // if (
    //
    //
    // ConstantUrl.isNotEmpty(firstNameController.text) &&
    //     ConstantUrl.isNotEmpty(lastNameController.text) &&
    //     ConstantUrl.isNotEmpty(phoneController.text) &&
    //     ConstantUrl.isNotEmpty(textPasswordController.text) ) {
    //
    //     if ((textPasswordController.text.length >= 6)) {
    //
          sendSignInPage();
    //     } else {
    //       ConstantUrl.showToast(S.of(context).passwordError, context);
    //     }
    //
    //
    //
    // } else {
    //   ConstantUrl.showToast(S.of(context).fillDetails, context);
    // }
  }
  String? pinCode;

  Future<void> checkRegister() async {


    // Map data = {
    //   ConstantUrl.paramMobile: countryCode + phoneController.text,
    //   ConstantUrl.paramEmail: widget.introModel.username,
    // };

    // final response =
    // await http.post(Uri.parse(ConstantUrl.checkAlreadyRegisterUrl), body: data);
    //
    // if (response.statusCode == 200) {
    //   Map<String, dynamic> map = json.decode(response.body);
    //
    //   FocusScopeNode currentFocus = FocusScope.of(context);
    //   if (!currentFocus.hasPrimaryFocus) {
    //     currentFocus.unfocus();
    //   }
    //   print("response-12-----${response.body}");
    //   CheckRegisterModel user = CheckRegisterModel.fromJson(map);
    //
    //
    //
    //
    //
    //   if (user.data!.success == 0) {
    //     // checkNetwork();
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  VerifyCodePage(countryCode + phoneController.text,(value){
                    // setState(() {
                    //   pinCode = value;
                    // });
                    // checkNetwork();
                    Navigator.of(context).pop();
                  }),
            ));
    //   }else{
    //     if (user.data!.login != null) {
    //       ConstantUrl.showToast(user.data!.login!.error!, context);
    //     }
    //   }
    //   print("res--1" + user.toString());
    // }
  }
  void sendSignInPage()async {
    bool isNetwork = await ConstantUrl.getNetwork();
    if (isNetwork) {
      checkRegister();
    } else {
      getNoInternet(context);
    }

  }




  checkNetwork()async{

    bool isNetwork = await ConstantUrl.getNetwork();
    if(isNetwork){

      signUp();
    }else{
      getNoInternet(context);
    }

  }

  Future<void> signUp() async {
    // String deviceId = await ConstantUrl.getDeviceId();
    //
    // DialogUtil dialogUtil = new DialogUtil(context);
    // dialogUtil.showLoadingDialog();
    //
    //
    //
    // print("deviceId------${deviceId}");
    //
    // Map data = {
    //
    //
    //
    //   ConstantUrl.paramFirstName: firstNameController.text,
    //   ConstantUrl.paramLastName: lastNameController.text,
    //   ConstantUrl.paramUserName: widget.introModel.username,
    //   ConstantUrl.paramEmail: emailController.text,
    //   ConstantUrl.paramPassword: textPasswordController.text,
    //   ConstantUrl.paramMobile: countryCode + phoneController.text,
    //   ConstantUrl.paramAge: widget.introModel.age,
    //   ConstantUrl.paramGender: widget.introModel.gender,
    //   ConstantUrl.paramHeight: widget.introModel.height,
    //   ConstantUrl.paramWeight: widget.introModel.weight,
    //   ConstantUrl.paramAddress: widget.introModel.address,
    //   ConstantUrl.paramCity: widget.introModel.city,
    //   ConstantUrl.paramState: widget.introModel.state,
    //   ConstantUrl.paramCountry: widget.introModel.country,
    //   ConstantUrl.paramTimeInWeek: widget.introModel.timeInWeek,
    //   ConstantUrl.paramIntensively: widget.introModel.intensively,
    //   ConstantUrl.paramDeviceId: deviceId,
    // };
    //
    //
    //
    //
    // final response =
    // await http.post(Uri.parse(ConstantUrl.registerUrl), body: data);
    //
    // if (response.statusCode == 200) {
    //   Map<String, dynamic> map = json.decode(response.body);
    //
    //   FocusScopeNode currentFocus = FocusScope.of(context);
    //   if (!currentFocus.hasPrimaryFocus) {
    //     currentFocus.unfocus();
    //   }
    //   print("response------${response.body}");
    //   RegisterModel user = RegisterModel.fromJson(map);
    //
    //   dialogUtil.dismissLoadingDialog();
    //
    //   if (user.dataModel.login != null) {
    //     ConstantUrl.showToast(user.dataModel.login!.error!, context);
    //   }
    //   if (user.dataModel.success == 1) {
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));

    //   }
    //   print("res--1" + user.toString());
    //
    // }
  }






}
