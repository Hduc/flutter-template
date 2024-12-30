import 'package:flutter/material.dart';
import 'package:furniture_ui/data/DataFile.dart';
import 'package:furniture_ui/generated/l10n.dart';
import 'package:furniture_ui/main.dart';
import 'package:furniture_ui/model/ProfileModel.dart';

import 'package:furniture_ui/utils/ConstantData.dart';
import 'package:furniture_ui/utils/PrefData.dart';
import 'package:furniture_ui/utils/SizeConfig.dart';
import 'package:furniture_ui/widget/AboutUsPage.dart';
import 'package:furniture_ui/widget/EditProfilePage.dart';
import 'package:furniture_ui/widget/FavouritePage.dart';
import 'package:furniture_ui/widget/MyOrderPage.dart';
import 'package:furniture_ui/widget/MySavedCardsPage.dart';
import 'package:furniture_ui/widget/MyVouchers.dart';
import 'package:furniture_ui/widget/ShippingAddressPage.dart';
import 'package:furniture_ui/widget/WriteReviewPage.dart';

class ProfileWidget extends StatefulWidget {
  // final ValueChanged<bool> onChanged;

  // ProfileWidget(this.onChanged);

  @override
  _ProfileWidget createState() {
    return _ProfileWidget();
  }
}

class _ProfileWidget extends State<ProfileWidget> {
  ProfileModel profileModel = DataFile.getProfileModel();

  // final ValueChanged<bool> onChanged;

  // _ProfileWidget(this.onChanged);

  @override
  void initState() {
    super.initState();
    profileModel = DataFile.getProfileModel();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.04;
    double imageSize = SizeConfig.safeBlockVertical! * 15;

    return Scaffold(
      backgroundColor: ConstantData.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ConstantData.bgColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          S.of(context).profile,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontFamily: "SFProText",
              fontWeight: FontWeight.bold,
              color: ConstantData.textColor),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: leftMargin,
            right: leftMargin,
            bottom: MediaQuery.of(context).size.width * 0.01),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              // padding: EdgeInsets.all(10),
              // decoration: new BoxDecoration(
              //     color: ConstantData.whiteColor,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black12,
              //         offset: Offset(1, 1),
              //         blurRadius: 1,
              //       )
              //     ],
              //     borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Container(
                // padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: imageSize,
                          width: imageSize,
                          // margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: ExactAssetImage(profileModel.image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  profileModel.name!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "SFProText",
                                    color: ConstantData.textColor,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(
                                    profileModel.email!,
                                    style: TextStyle(
                                      fontFamily: "SFProText",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: ConstantData.primaryTextColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 1,
                        )
                      ],
                    ),
                    // Container(
                    //   child: Row(
                    //     children: [
                    //       ImageIcon(
                    //         AssetImage('assets/images/checkmark.png'),
                    //         size: 10,
                    //         color: ConstantData.textColor,
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(left: 5),
                    //         child: Text(
                    //           S.of(context).verified,
                    //           textAlign: TextAlign.start,
                    //           style: TextStyle(
                    //               fontFamily: "SFProText",
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 10,
                    //               color: ConstantData.textColor),
                    //         ),
                    //       ),
                    //       new Spacer(),
                    //       InkWell(
                    //         child: Container(
                    //             margin: EdgeInsets.only(
                    //               right: 15,
                    //             ),
                    //             padding: EdgeInsets.all(5),
                    //             decoration: BoxDecoration(
                    //                 color: ConstantData.primaryColor,
                    //                 borderRadius:
                    //                     BorderRadius.all(Radius.circular(5))),
                    //             child: InkWell(
                    //               child: Center(
                    //                 child: Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.center,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.center,
                    //                   children: [
                    //                     ImageIcon(
                    //                       AssetImage('assets/images/edit.png'),
                    //                       size: 10,
                    //                       color: ConstantData.whiteColor,
                    //                     ),
                    //                     Padding(
                    //                         padding: EdgeInsets.only(left: 5),
                    //                         child: Text(
                    //                           S.of(context).edit,
                    //                           style: TextStyle(
                    //                               fontWeight: FontWeight.w400,
                    //                               fontSize: 10,
                    //                               color: Colors.white,
                    //                               fontFamily: "SFProText",
                    //                               decoration:
                    //                                   TextDecoration.none),
                    //                         ))
                    //                   ],
                    //                 ),
                    //               ),
                    //               onTap: () {
                    //                 Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(
                    //                         builder: (context) =>
                    //                             EditProfilePage()));
                    //               },
                    //             )),
                    //         onTap: () {},
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            InkWell(
              child: _getCell(S.of(context).editProfiles, Icons.edit),
              onTap: () {
                sendAction(EditProfilePage());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).myOrder, Icons.shopping_bag),
              onTap: () {
                sendAction(MyOrderPage());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).myFavourite, Icons.favorite),
              onTap: () {
                sendAction(FavouritePage());
              },
            ),
            InkWell(
              child: _getCell(
                  S.of(context).shippingAddress, Icons.local_shipping_outlined),
              onTap: () {
                sendAction(ShippingAddressPage());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).mySavedCards, Icons.credit_card),
              onTap: () {
                sendAction(MySavedCardsPage());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).giftCard, Icons.card_giftcard),
              onTap: () {
                sendAction(MyVouchers());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).review, Icons.rate_review),
              onTap: () {
                sendAction(WriteReviewPage());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).aboutUs, Icons.info),
              onTap: () {
                sendAction(AboutUsPage());
              },
            ),
            InkWell(
              child: _getCell(S.of(context).logout, Icons.logout),
              onTap: () {
                PrefData.setIsSignIn(false);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              title: '',
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }

  void sendAction(StatefulWidget className) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => className));
  }

  Widget _getCell(String s, var icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 40,
                decoration: new BoxDecoration(
                    color: ConstantData.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Icon(
                  icon,
                  size: 20,
                  color: ConstantData.primaryTextColor,
                ),
              ),
              Text(
                s,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: "SFProText",
                  color: ConstantData.textColor,
                ),
              ),
              new Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Icon(
                    Icons.navigate_next,
                    color: ConstantData.textColor,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 10),
            height: 1,
            color: ConstantData.viewColor,
          ),
        ],
      ),
    );
  }
}
