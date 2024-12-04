import 'dart:io';

import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/model/AddressModel.dart';
import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
// import 'package:image_picker/image_picker.dart';

import 'package:furniture_ui/generated/l10n.dart';

import 'AddNewAddressPage.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePage createState() {
    return _EditProfilePage();
  }
}

class _EditProfilePage extends State<EditProfilePage> {
  List<AddressModel> addressList = DataFile.getAddressList();

  int _selectedPosition = 0;

  @override
  void initState() {
    super.initState();
    addressList = DataFile.getAddressList();
    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  // XFile? _image;
  // final picker = ImagePicker();

  _imgFromGallery() async {
  //   // ignore: deprecated_member_use
  //   final XFile? image =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //
  //   setState(() {
  //     _image = image;
  //   });
  }

  getProfileImage() {
    // if (_image != null && _image!.path.isNotEmpty) {
    //   return Image.file(
    //     File(_image!.path),
    //     fit: BoxFit.cover,
    //   );
    // } else {
    //   //
      return Image.asset(
        'assets/images/hugh.png',
        fit: BoxFit.cover,
      );
    // }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double editTextHeight = MediaQuery.of(context).size.height * 0.06;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,
            title: Text(S.of(context).editProfiles,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "SFProText",
                    color: ConstantData.textColor)),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.black,
                  ),
                  onPressed: _requestPop,
                );
              },
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(left: leftMargin, right: leftMargin),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                          height: 150.0,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 150,
                                  width: 150,
                                  child: Container(
                                    margin: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,

                                      // borderRadius: BorderRadius.all(Radius.elliptical(20.0, 20.0)),
                                    ),
                                    child: ClipOval(
                                      child: Material(
                                        color: ConstantData.primaryColor,
                                        child: getProfileImage(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    right: 20,
                                    bottom: 25,
                                    child: InkWell(
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ConstantData.primaryColor,
                                            // border: Border.all(
                                            //     width: 3,
                                            //     color: ConstantData.bgColor)
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.photo_camera_back,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: _imgFromGallery,
                                    ))
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              S.of(context).userInformation,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: ConstantData.textColor),
                            )),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        S.of(context).firstName,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: ConstantData.textColor),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 3, left: 8),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ConstantData.textColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                ConstantData.disableIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        S.of(context).lastName,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: ConstantData.textColor),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, left: 8),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 3, left: 8),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ConstantData.textColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                ConstantData.disableIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              S.of(context).emailAddressHint,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ConstantData.textColor),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          style: TextStyle(
                              fontFamily: "SFProText",
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 3, left: 8),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: ConstantData.textColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstantData.disableIconColor),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        S.of(context).gender,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: ConstantData.textColor),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 3, left: 8),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ConstantData.textColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                ConstantData.disableIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 8),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        S.of(context).phone,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: "SFProText",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: ConstantData.textColor),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, left: 8),
                                  height: editTextHeight,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: "SFProText",
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 3, left: 8),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ConstantData.textColor),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                ConstantData.disableIconColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Text(
                              S.of(context).addressTitle,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "SFProText",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                  color: ConstantData.textColor),
                            ),
                            new Spacer(),
                            InkWell(
                              child: Text(
                                S.of(context).newAddress.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: "SFProText",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: ConstantData.textColor),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddNewAddressPage()));
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.width * 0.01,
                        ),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: addressList.length,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 17, bottom: 17),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            addressList[index]
                                                                .name!,
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "SFProText",
                                                              color: ConstantData
                                                                  .textColor,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 2),
                                                            child: Text(
                                                              addressList[index]
                                                                  .location!,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    "SFProText",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                                color: ConstantData
                                                                    .primaryTextColor,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 3),
                                                        child: Icon(
                                                          (index ==
                                                                  _selectedPosition)
                                                              ? Icons
                                                                  .radio_button_checked
                                                              : Icons
                                                                  .radio_button_unchecked,
                                                          color: (index ==
                                                                  _selectedPosition)
                                                              ? ConstantData
                                                                  .textColor
                                                              : ConstantData
                                                                  .disableIconColor,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                flex: 1,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      color: ConstantData.viewColor,
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  _selectedPosition = index;
                                  setState(() {});
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: leftMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).save,
                            style: TextStyle(
                                fontFamily: "SFProText",
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }
}
