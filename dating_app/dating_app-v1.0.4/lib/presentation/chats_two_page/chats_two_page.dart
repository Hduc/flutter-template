
import '../chats_two_page/widgets/cat_item_widget.dart';
import 'controller/chats_two_controller.dart';
import 'models/chats_two_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatsTwoPage extends StatelessWidget {
  ChatsTwoPage({Key? key})
      : super(
          key: key,
        );

  ChatsTwoController chatsTwoController =
      Get.put(ChatsTwoController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


          Padding(
            padding: getPadding(top: getSize(65),bottom: getSize(10)),
            child: Text(
            "Chat".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Divider(
           color: Color(0xFFE7E7E7),
            thickness: getSize(1.5),
          ),
          Padding(
            padding:getPadding(all: getSize(16)),
            child: CustomSearchView(

              enabled: true,
              autofocus: false,
              textInputType: TextInputType.name,
              controller: chatsTwoController.searchController,
              hintText: "lbl_search_here".tr,
              hintStyle: CustomTextStyles.bodyLargeGray600,
              textStyle: CustomTextStyles.bodyLargeGray600,
              prefix: Container(
                margin: getMargin(
                  left: getSize(17),
                  top: getSize(15),
                  right: getSize(13),
                  bottom: getSize(15),
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgSearch,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: getSize(
                  54,
                ),
              ),
              suffix: SizedBox(),
              filled: true,
              fillColor: Color(0xFFF8F8F8),
              contentPadding: getPadding(
                left: getSize(17),
                right: getSize(30),
                // bottom: 15,
                top: getSize(15),
              ),
            ),
          ),
          Expanded(
            child: GetBuilder<ChatsTwoController>(builder: (controller) {
              return ListView.separated(
                padding:getPadding(left: getSize(16),right: getSize(16)),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                    context,
                    index,
                    ) {
                  return SizedBox(
                    height: getSize(
                      14,
                    ),
                  );
                },
                itemCount: controller.getChatList.length,
                itemBuilder: (context, index) {
                  ChatsTwoModel data = controller.getChatList[index];
                  return GestureDetector(
                    onTap: () {
                      controller.passData(data);
                      Get.toNamed(AppRoutes.chatsWithSendScreen);
                    },
                    child: CatItemWidget(
                      unseen: controller.getChatList[index].unseen!,
                      img:controller.getChatList[index].image,
                      name:controller.getChatList[index].name,
                      lastMessage: controller.getChatList[index].lastMessage,
                      time:controller.getChatList[index].time ,
                    ),
                  );
                },
              );
            },init: ChatsTwoController(),)

          ),
        ],
      ),
    );
  }
}
