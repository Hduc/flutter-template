// ignore_for_file: deprecated_member_use

import 'package:eco_product_ui_updated/utils/ConstantWidget.dart';
import 'package:flutter/material.dart';
import 'package:eco_product_ui_updated/data/DataFile.dart';
import 'package:eco_product_ui_updated/model/AddressModel.dart';
import 'package:eco_product_ui_updated/utils/ConstantData.dart';
import 'package:eco_product_ui_updated/utils/SizeConfig.dart';
// import 'package:image_picker/image_picker.dart';

import 'package:eco_product_ui_updated/generated/l10n.dart';

import 'AddNewAddressPage.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePage createState() {
    return _EditProfilePage();
  }
}

class _EditProfilePage extends State<EditProfilePage> {
  List<AddressModel> addressList = DataFile.getAddressList();

  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController mailController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();

  int _selectedPosition = 0;

  @override
  void initState() {
    super.initState();
    addressList = DataFile.getAddressList();

    firstNameController.text = "harry";
    lastNameController.text = "harry";
    mailController.text = "fd@gamil.com";
    genderController.text = "Male";
    phoneController.text = "326598659";

    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  // late File _image;
  // final picker = ImagePicker();

  _imgFromGallery() async {
    // File image = await  ImagePicker.pickImage(
    //     source: ImageSource.gallery, imageQuality: 50
    // );
    //
    // setState(() {
    //   _image = image;
    // });
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
            title: ConstantWidget.getAppBarText(S.of(context).editProfiles),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: ConstantWidget.getAppBarIcon(),
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
                                        image: new DecorationImage(
                                          // image: _image == null
                                          //     ?
                                          image: AssetImage(
                                              "assets/images/hugh.png"),
                                          // : FileImage(_image),
                                          fit: BoxFit.fill,
                                        )
                                        // borderRadius: BorderRadius.all(Radius.elliptical(20.0, 20.0)),
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
                          child: ConstantWidget.getCustomTextWithoutAlign(
                              S.of(context).userInformation,
                              ConstantData.textColor,
                              FontWeight.bold,
                              16),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: firstNameController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).firstName,
                                      // hintText: 'Full Name',
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
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 10, left: 8, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    controller: lastNameController,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).lastName,
                                      // hintText: 'Full Name',
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
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: mailController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).emailAddressHint,
                            // hintText: 'Full Name',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: genderController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).gender,
                                      // hintText: 'Full Name',
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
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                    left: 8,
                                    top: 10,
                                  ),
                                  height: editTextHeight,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    maxLines: 1,
                                    controller: phoneController,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).phone,
                                      // hintText: 'Full Name',
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
                            getTextWidget(S.of(context).addressTitle),
                            new Spacer(),
                            InkWell(
                              //

                              child: ConstantWidget
                                  .getUnderLineCustomTextWithoutAlign(
                                      S.of(context).newAddress,
                                      ConstantData.textColor1,
                                      FontWeight.w600,
                                      ConstantData.font12Px),

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
                                      height: SizeConfig.safeBlockVertical! * 8,
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
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
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ConstantWidget
                                                            .getCustomTextWithoutAlign(
                                                                addressList[
                                                                        index]
                                                                    .name,
                                                                ConstantData
                                                                    .textColor,
                                                                FontWeight.w700,
                                                                ConstantData
                                                                    .font15Px),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5),
                                                          child: ConstantWidget
                                                              .getCustomTextWithoutAlign(
                                                                  addressList[
                                                                          index]
                                                                      .location,
                                                                  ConstantData
                                                                      .primaryTextColor,
                                                                  FontWeight
                                                                      .w500,
                                                                  ConstantData
                                                                      .font12Px),
                                                        )
                                                      ],
                                                    ),
                                                    new Spacer(),
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
                          child: ConstantWidget.getCustomTextWithoutAlign(
                              S.of(context).save,
                              Colors.white,
                              FontWeight.w900,
                              ConstantData.font15Px),
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

  static getTextWidget(String s) {
    return ConstantWidget.getCustomText(s, ConstantData.textColor, 1,
        TextAlign.start, FontWeight.bold, ConstantData.font12Px);
  }
}
