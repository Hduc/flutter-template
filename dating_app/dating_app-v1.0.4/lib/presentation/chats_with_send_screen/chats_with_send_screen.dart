import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/data/pref_data.dart';
import 'package:dating_app/presentation/chats_with_send_screen/received_message_container.dart';
import 'package:dating_app/presentation/chats_with_send_screen/send_chat_container.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../generated/assets.dart';
import 'controller/chats_with_send_controller.dart';

class ChatsWithSendScreen extends GetWidget<ChatsWithSendController> {
  const ChatsWithSendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ChatsTwoController chatsTwoController =Get.put(ChatsTwoController());
    return Scaffold(
        backgroundColor: Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: getPadding(
                      top: getSize(65),
                       bottom: getSize(10)),
                  decoration: AppDecoration.outline3,
                  child: Padding(
                    padding: getPadding(left: getSize(16),right: getSize(16)),
                    child: Stack(
                      alignment: Alignment.center,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                              PrefData.currentIndex=2;
                              Get.toNamed(AppRoutes.locationAccessContainer1Screen);
                                // Get.back();
                              },
                              child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: getSize(24),)),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text("Jenny wilson".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium),
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.callScreen);
                            },
                              child: Image.asset(Assets.imagesCall,height: getSize(24),)),
                        )
                      ],
                    ),
                  )),
             Expanded(
               child: ListView(
                 physics: BouncingScrollPhysics(),
                 padding: getPadding(top: getSize(24),right: getSize(16),left: getSize(16)),
                 children: [
                   Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                             padding: getPadding(top: getSize(10)),
                             child: Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.end,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   SendContainer(
                                     message: 'Hi jenny...',
                                   ),
                                   Align(
                                       alignment: Alignment.centerRight,
                                       child: Padding(
                                           padding: getPadding(top: getSize(6)),
                                           child: Text("lbl_09_55_am".tr,
                                               overflow:
                                               TextOverflow.ellipsis,
                                               textAlign: TextAlign.left,
                                               style: CustomTextStyles
                                                   .bodyMediumGray600)))
                                 ])),
                         CustomImageView(
                             imagePath: ImageConstant.imgEllipse24,
                             height: getSize(50),
                             width: getSize(50),
                             radius: BorderRadius.circular(
                                 getSize(25)),
                             margin: getMargin(left: getSize(8), bottom: getSize(23)))
                       ]),
                   Padding(
                       padding: getPadding(left: getSize(45), top: getSize(13)),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Expanded(
                                 child: Padding(
                                     padding: getPadding(top: getSize(11)),
                                     child: Column(
                                         crossAxisAlignment:
                                         CrossAxisAlignment.end,
                                         mainAxisAlignment:
                                         MainAxisAlignment.start,
                                         children: [
                                           SendContainer(
                                             message: 'My name is ronald, I am 24 years old. It '
                                                 'seems like we have a lot of similarities '
                                                 'and attraction to each other. can i know you a bit more? 😄',
                                           ),
                                           Padding(
                                               padding: getPadding(top: getSize(6)),
                                               child: Text("lbl_09_55_am".tr,
                                                   overflow:
                                                   TextOverflow.ellipsis,
                                                   textAlign: TextAlign.left,
                                                   style: CustomTextStyles
                                                       .bodyMediumGray600))
                                         ]))),
                             CustomImageView(
                                 imagePath: ImageConstant.imgEllipse24,
                                 height: getSize(50),
                                 width: getSize(50),
                                 radius: BorderRadius.circular(
                                     getSize(25)),
                                 margin: getMargin(left: getSize(8), bottom: getSize(99)))
                           ])),
                   Align(
                       alignment: Alignment.centerLeft,
                       child: Padding(
                           padding: getPadding(top: getSize(14)),
                           child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 CustomImageView(
                                     imagePath:
                                     ImageConstant.imgEllipse2450x50,
                                     height: getSize(50),
                                     width: getSize(50),
                                     radius: BorderRadius.circular(
                                         getSize(25)),
                                     margin: getMargin(bottom: 27)),
                                 Padding(
                                     padding: getPadding(left: getSize(8), top: getSize(10)),
                                     child: Column(
                                         crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                         mainAxisAlignment:
                                         MainAxisAlignment.start,
                                         children: [
                                          ReceivedMessageContainer(
                                            message: 'Hi ronald...',
                                          ),
                                           Padding(
                                               padding: getPadding(
                                                   left: getSize(6), top: getSize(10)),
                                               child: Text("lbl_09_55_am".tr,
                                                   overflow:
                                                   TextOverflow.ellipsis,
                                                   textAlign: TextAlign.left,
                                                   style: CustomTextStyles
                                                       .bodyMediumGray600))
                                         ]))
                               ]))),
                   Align(
                       alignment: Alignment.centerLeft,
                       child: Padding(
                           padding: getPadding(top: getSize(9)),
                           child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 CustomImageView(
                                     imagePath:
                                     ImageConstant.imgEllipse2450x50,
                                     height: getSize(50),
                                     width: getSize(50),
                                     radius: BorderRadius.circular(
                                         getSize(25)),
                                     margin: getMargin(bottom: getSize(36))),
                                 Expanded(
                                     child: Padding(
                                         padding:
                                         getPadding(left: getSize(8), top: getSize(10)),
                                         child: Column(
                                             crossAxisAlignment:
                                             CrossAxisAlignment.start,
                                             mainAxisAlignment:
                                             MainAxisAlignment.start,
                                             children: [
                                               ReceivedMessageContainer(
                                               message:  'I m jenny, I m 24 years old. I currently live in los angeles. ☺️'
                                               ),
                                               Padding(
                                                   padding: getPadding(
                                                       left: getSize(6), top: getSize(6)),
                                                   child: Text(
                                                       "lbl_09_55_am".tr,
                                                       overflow: TextOverflow
                                                           .ellipsis,
                                                       textAlign:
                                                       TextAlign.left,
                                                       style: CustomTextStyles
                                                           .bodyMediumGray600))
                                             ])))
                               ]
                           )
                       )
                   ),
                 

                 ],
               ),
             ),
              Padding(
                padding: getPadding(bottom: getSize(30),left: getSize(16),right: getSize(16)),
                child: Row(children: [
                  Expanded(
                      child: CustomTextFormField(
                        autofocus: false,
                          controller: controller.grouptwentyfourController,


                          hintText: "lbl_massage".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray600,
                          suffix: Container(
                              margin: getMargin(
                                  left: getSize(30), top: getSize(19), right: getSize(16), bottom: getSize(18)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSend)),
                          suffixConstraints:
                          BoxConstraints(maxHeight: getSize(61)),
                          filled: true,
                          fillColor: Color(0xFFF8F8F8),



                      )),
                  SizedBox(
                    width: getSize(16),
                  ),
                  PopupMenuButton(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(getSize(12)),
                      ),
                      child: Padding(
                        padding:  getPadding(all: getSize(11)),
                        child: Icon(Icons.add,size: getSize(35),),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                    position:PopupMenuPosition.over ,
                     shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(getSize(12)),
                    bottomRight: Radius.circular(getSize(12),),
                    topLeft: Radius.circular(getSize(12),),
                    topRight: Radius.circular(getSize(12),),
                  ),
                     ),
                      constraints: BoxConstraints.tightFor(height: getSize(190),width: getSize(161)),
                    offset: Offset(0,-80),


                    itemBuilder: (context) {
                    return    [

                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        height: getSize(41),

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(left: getSize(16),top: getSize(10),right: getSize(8)),
                                  child: Image.asset(Assets.imagesCamera,height: getSize(20),),
                                ),
                                Text("Camera"),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.shade200,
                            )
                          ],
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        height: getSize(41),

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(left: getSize(16),top: getSize(10),right: getSize(8)),
                                  child: Image.asset(Assets.imagesNotes,height: getSize(20),),
                                ),
                                Text("Document"),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.shade200,
                            )
                          ],
                        ),
                        value: 2,
                      ),
                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        height: getSize(41),

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(left: getSize(16),top: getSize(10),right: getSize(8)),
                                  child: Image.asset(Assets.imagesGallery,height: getSize(20),),
                                ),
                                Text("Photos"),
                              ],
                            ),
                            Divider(
                              color: Color(0xFFF8F8F8),
                            )
                          ],
                        ),
                        value: 3,
                      ),
                      PopupMenuItem(
                        padding: EdgeInsets.zero,
                        height: getSize(41),

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: getPadding(left: getSize(16),top: getSize(10),right: getSize(8)),
                                  child: Image.asset(Assets.imagesHeadphone,height: getSize(20),),
                                ),
                                Text("Audio"),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.shade200,
                            )
                          ],
                        ),
                        value: 4,
                      ),
                    ];
                  },)

                ]
                ),
              ),
            ]),



    );
  }


  onTapArrowleft16() {
    Get.back();
  }

}
