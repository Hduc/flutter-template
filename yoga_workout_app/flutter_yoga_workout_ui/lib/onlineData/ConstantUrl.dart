import 'dart:convert';
import 'dart:io';




import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



import '../PrefData.dart';
import '../SignInPage.dart';


class ConstantUrl {






  static Future<bool> isLogin()async {
    return await PrefData.getIsSignIn();
  }
  static bool isNotEmpty(String s) {
    return (s.isNotEmpty);
  }




  // static Future<UserDetail> getUserDetail() async {
  //   String s = await PrefData.getUserDetail();
  //   print("service---1" + s);
  //   if (s.isNotEmpty) {
  //     Map<String, dynamic> userMap;
  //       userMap = jsonDecode(s) as Map<String, dynamic>;
  //
  //
  //       final UserDetail user = UserDetail.fromJson(userMap);
  //       print(user);
  //       print("service---" + user.toString());
  //
  //       return user;
  //
  //   } else {
  //     return new UserDetail();
  //   }
  // }

  static bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

  static bool phoneNumberValidator(String value) {
    Pattern pattern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value))
      return false;
    else
      return true;
  }



  static void sendLoginPage(BuildContext context,{Function? function}){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInPage(),
        )).then((value) {


          if(function!=null){
            function();
          }
    });
  }



 static  Future<String> getDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor!; // unique ID on iOS
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id; // unique ID on Android
      // return androidDeviceInfo.androidId!; // unique ID on Android
    }
  }








  static Future<bool> getNetwork() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  static showToast(String s, BuildContext context) {



    if (s.isNotEmpty) {

      Fluttertoast.showToast(
          msg: s,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12
      );

      // Toast.show(s, context,
      //     duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    }
  }




}
