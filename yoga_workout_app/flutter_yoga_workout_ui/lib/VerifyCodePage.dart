import 'dart:async';


import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';


import 'package:workout/ColorCategory.dart';
import 'package:workout/Constants.dart';

import 'ConstantWidget.dart';
import 'SizeConfig.dart';

import 'create_account_dialog.dart';
import 'generated/l10n.dart';



class VerifyCodePage extends StatefulWidget {
  final String email;
  final ValueChanged<String> function;

  VerifyCodePage(this.email, this.function);

  @override
  _VerifyCodePage createState() {
    return _VerifyCodePage();
  }
}

class _VerifyCodePage extends State<VerifyCodePage>
    with WidgetsBindingObserver {
  TextEditingController emailController = new TextEditingController();
  final GlobalKey<FormFieldState<String>> _formKey =
      GlobalKey<FormFieldState<String>>(debugLabel: '_formkey');
  TextEditingController _pinEditingController = TextEditingController(text: '');
  bool _enable = true;

  String? appSignature;

  String? verificationId;
  String resendString = " ";
  int _countDown = 60;

  // SmsReceiver _smsReceiver;

  Timer? _timer;

  // SmsReceiver receiver = new SmsReceiver();

  // SmsReceiver _smsReceiver;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _cancelTimer();
    } else if (state == AppLifecycleState.resumed) {
      startTimer();
    }
  }

  void _cancelTimer() {
    print("timer---true");
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  @override
  void dispose() {
    _cancelTimer();
    // SmsAutoFill().unregisterListener();
    super.dispose();
  }

  void startTimer() {
    _cancelTimer();
    print("_countDown12" + _countDown.toString());
    var oneSec = Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      if (_countDown < 1) {
        if (mounted) {
          setState(() {
            timer.cancel();
            resendString = S.of(context).resend;
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _countDown = _countDown - 1;
            resendString = S.of(context).resendSms +
                " " +
                _countDown.toString() +
                " " +
                S.of(context).sec;
          });
        }
      }
    });
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }








  @override
  void initState() {
    super.initState();



    setState(() {
      emailController.text = widget.email;
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgDarkWhite,
          appBar: AppBar(
            backgroundColor: bgDarkWhite,
            elevation: 0,toolbarHeight: 0,

          ),
          body: Container(

            color: bgDarkWhite,
            child: Column(

              children: [
                ConstantWidget.getLoginAppBar(context,function: _requestPop),

                Expanded(
                  flex: 1,
                  child: ListView(
                    padding: EdgeInsets.symmetric(
                        horizontal: ConstantWidget.getWidthPercentSize(context, 3)),
                    children: [


                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 2.5),
                      ),
                      ConstantWidget.getTextWidget(
                          S.of(context).verifyCode,
                          textColor,
                          TextAlign.left,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 3)),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 1.4),
                      ),

                      ConstantWidget.getTextWidget(
                          S.of(context).verifyMsg,
                          textColor,
                          TextAlign.left,
                          FontWeight.w400,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      SizedBox(
                        height: ConstantWidget.getScreenPercentSize(context, 3  ),
                      ),

                      // ConstantWidget.getDefaultTextFiledWidget(
                      //     context, widget.email,emailController,isEnabled: false),

                      Container(
                        height: SizeConfig.safeBlockVertical! * 6.6,
                        margin: EdgeInsets.symmetric(
                            vertical:
                                ConstantWidget.getScreenPercentSize(context, 3)),
                        child: PinInputTextFormField(
                          key: _formKey,
                          pinLength: 6,
                          decoration: new BoxLooseDecoration(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    ConstantWidget.getScreenPercentSize(context, 2.2),
                                fontWeight: FontWeight.w400),
                            radius: Radius.circular(
                                ConstantWidget.getScreenPercentSize(context, 0.8)),
                            strokeColorBuilder:
                                PinListenColorBuilder(blueButton, Colors.grey.shade300),
                            obscureStyle: ObscureStyle(
                              isTextObscure: false,
                              obscureText: '🤪',
                            ),
                          ),
                          controller: _pinEditingController,
                          textInputAction: TextInputAction.go,
                          enabled: _enable,
                          keyboardType: TextInputType.number,
                          textCapitalization: TextCapitalization.characters,
                          onSubmit: (pin) {
                            print("gtepin===$pin");
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                          },
                          onChanged: (pin) {
                            setState(() {
                              debugPrint('onChanged execute. pin:$pin');
                            });
                          },
                          onSaved: (pin) {
                            debugPrint('onSaved pin:$pin');
                          },
                          validator: (pin) {
                            if (pin!.isEmpty) {
                              setState(() {
                                // _hasError = true;
                              });
                              return 'Pin cannot empty.';
                            }
                            setState(() {
                              // _hasError = false;
                            });
                            return null;
                          },
                          cursor: Cursor(
                            width: 2,
                            color: Colors.white,
                            radius: Radius.circular(1),
                            enabled: true,
                          ),
                        ),
                      ),

                        // ConstantWidget.getButtonWidget1(context, S.of(context).next, () {
                        // if (verificationId != null && verificationId!.isNotEmpty) {
                        //   _signInWithPhoneNumber(_pinEditingController.text);
                        // } else {
                        //   ConstantUrl.showToast(S.of(context).fillOtp, context);
                        // }
                      // }),

                      ConstantWidget.getButtonWidget(
                          context, 'Verify', blueButton, () {
                        // if (verificationId != null && verificationId!.isNotEmpty) {
                          _signInWithPhoneNumber(_pinEditingController.text);
                        // } else {
                        //   ConstantUrl.showToast(S.of(context).fillOtp, context);
                        // }
                      }),

                      SizedBox(height:    ConstantWidget.getScreenPercentSize(context, 2.3),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstantWidget.getTextWidget(
                              "Didn't receive code?",
                              Colors.black,
                              TextAlign.left,
                              FontWeight.w500,
                              ConstantWidget.getScreenPercentSize(context, 1.8)),
                          SizedBox(
                            width: ConstantWidget.getScreenPercentSize(context, 0.5),
                          ),
                          InkWell(
                            child: ConstantWidget.getTextWidget(
                                resendString,
                                accentColor,
                                TextAlign.start,
                                FontWeight.bold,
                                ConstantWidget.getScreenPercentSize(context, 2)),
                            onTap: () {
                              if (resendString == (S.of(context).resend)) {

                              }
                            },
                          )
                        ],
                      ),


                      // InkWell(
                      //   child: Row(
                      //     children: [
                      //
                      //       Padding(
                      //         padding: EdgeInsets.only(
                      //             top: ConstantWidget.getScreenPercentSize(context, 1),
                      //             bottom:
                      //                 ConstantWidget.getScreenPercentSize(context, 1)),
                      //         child: ConstantWidget.getCustomTextWithUnderLine(
                      //             resendString,
                      //             TextAlign.end,
                      //             (resendString == (S.of(context).resend))
                      //                 ? accentColor
                      //                 : Colors.grey,
                      //             FontWeight.w400,
                      //             ConstantWidget.getScreenPercentSize(context, 1.6)),
                      //       ),
                      //     ],
                      //   ),
                      //   onTap: () {
                      //     if (resendString == (S.of(context).resend)) {
                      //       setNumber();
                      //     }
                      //   },
                      // ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  void _signInWithPhoneNumber(String smsCode) async {

      // checkValidation();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return  CreateAccountDialog(clickListener: (c) {
          Navigator.of(context).pop();
        });
      },
    );


  }

  Widget textFieldWidget(BuildContext context, String s, var keyboardType,
      bool isPassWord, var icon, TextEditingController textEditingController) {
    double height = ConstantWidget.getScreenPercentSize(context, 6.8);
    double borderWidth = ConstantWidget.getScreenPercentSize(context, 0.05);
    double borderRadius = ConstantWidget.getScreenPercentSize(context, 0.7);

    return Container(
      margin: EdgeInsets.only(
        top: ConstantWidget.getScreenPercentSize(context, 1.3),
        bottom: ConstantWidget.getScreenPercentSize(context, 3),
      ),
      height: height,
      child: new Theme(
          data: new ThemeData(
              primaryColor: blueButton,

              hintColor: Colors.grey),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              enabled: false,
              controller: textEditingController,
              maxLines: 1,
              keyboardType: keyboardType,
              obscureText: isPassWord,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: blueButton,
              style: TextStyle(
                  fontFamily: Constants.fontsFamily,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: ConstantWidget.getScreenPercentSize(context, 1.8)),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.only(
                    left: ConstantWidget.getScreenPercentSize(context, 1)),
                suffixIcon: Icon(
                  icon,
                  size: ConstantWidget.getPercentSize(height, 50),
                  color: Colors.grey,
                ),
                border: ConstantWidget.getOutlineBorder(
                    Colors.grey, borderWidth, borderRadius),
                focusedBorder: ConstantWidget.getOutlineBorder(
                    blueButton, borderWidth, borderRadius),
                enabledBorder: ConstantWidget.getOutlineBorder(
                    Colors.grey, borderWidth, borderRadius),
                errorBorder: ConstantWidget.getOutlineBorder(
                    Colors.red, borderWidth, borderRadius),
                disabledBorder: ConstantWidget.getOutlineBorder(
                    Colors.grey, borderWidth, borderRadius),
                hintText: s,
                hintStyle: TextStyle(
                    fontFamily: Constants.fontsFamily,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize:
                        ConstantWidget.getScreenPercentSize(context, 1.8)),
              ),
            ),
          )),
    );
  }

  void checkNetWork() {
    // URLData.check(context, (value) {
    //   if (value) {
    //     verifyCode();
    //   }
    // });
  }

  void checkValidation() {
    // print("text---${_pinEditingController.text}");
    //
    // if (ConstantUrl.isNotEmpty(_pinEditingController.text)) {
    //   Navigator.of(context).pop();
    //   widget.function(_pinEditingController.text);
    // } else {
    //   ConstantUrl.showToast(S.of(context).fillDetails, context);
    // }
  }

  //
  Future<void> verifyCode() async {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    // ProgressDialog progressDialog = URLData.showProgressDialog(context);
    // await progressDialog.show();
    //
    // Map data = {
    //   URLData.paramPhoneNumber: emailController.text,
    //   URLData.paramCode: _pinEditingController.text,
    // };
    //
    // final response =
    //     await http.post(Uri.parse(URLData.verifyEmailUrl), body: data);
    // // final response = await http.post('${URLData.verifyEmailUrl}', body: data);
    // if (response.statusCode == 200) {
    //   print("res--" + response.body.toString());
    //
    //   Map<String, dynamic> map = json.decode(response.body);
    //
    //   VerificationModel user = VerificationModel.fromJson(map);
    //
    //   if (user != null) {
    //     progressDialog.hide();
    //     // if (user.dataModel.success == 1) {
    //     //   // sendSignInPage();
    //     //   widget.function(true);
    //     //   Navigator.of(context).pop();
    //     // }else{
    //     //   widget.function(false);
    //     // }
    //
    //     if (user.dataModel.verifycode != null) {
    //       URLData.showToast(user.dataModel.verifycode.error, context);
    //     }
    //   }
    //   print("res--1" + user.toString());
    // }
  }

  void sendSignInPage() {
    Navigator.pop(context);
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => SignInPage(),
    //     ));
  }
}
// [firebase_auth/unknown] Please register custom URL scheme 'app-1-748273514934-ios-fff1eb93efcd96a245a917' in the app's Info.plist file.

// <key>CFBundleURLTypes</key>
// <array>
// <dict>
// <key>CFBundleTypeRole</key>
// <string>Editor</string>
// <key>CFBundleURLSchemes</key>
// <array>
// <string>***Your bundle ID***</string>
// </array>
// </dict>
// <dict>
// <key>CFBundleTypeRole</key>
// <string>Editor</string>
// <key>CFBundleURLSchemes</key>
// <array>
// <string>com.googleusercontent.apps.107731993306-6s44u18onibp6gi0ddj94si1aifshhg6</string>
// </array>
// </dict>
// <dict>
// <key>CFBundleTypeRole</key>
// <string>Editor</string>
// <key>CFBundleURLSchemes</key>
// <array>
// <string>***Something here***</string>
// </array>
// </dict>
// </array>
