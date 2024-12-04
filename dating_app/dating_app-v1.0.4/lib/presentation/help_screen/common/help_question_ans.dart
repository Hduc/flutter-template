import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/help_screen/controller/help_controller.dart';
import 'package:flutter/material.dart';
import '../../../generated/assets.dart';

class QuestionAns extends StatelessWidget {
  final String? question;
  const QuestionAns({super.key, this.question, });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HelpController>(builder:(controller) {
      return Padding(
        padding: getPadding(left: getSize(16),right: getSize(16),bottom: getSize(16)),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor:Colors.transparent),
          child: ListTileTheme(
            contentPadding: const EdgeInsets.all(0),
            tileColor: Colors.white,
            dense: true,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: Color(0xFFE7E7E7),
                    width: getSize(2)
                ),

              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:getSize(16)),
                child: ExpansionTile(
                  // clipBehavior: Clip.antiAlias,
                  // tilePadding:  EdgeInsets.only(right: 15),
                  // childrenPadding: EdgeInsets.symmetric(horizontal: 15.h),
                  backgroundColor:Colors.transparent,
                  onExpansionChanged: (bool expanded) {
                    controller.tileExpanded = expanded;
                    controller.update();
                  },
                  trailing: Image.asset(
                    controller.tileExpanded
                        ?Assets.imagesArrowUp: Assets.imagesArrow,height: getSize(24),color: Colors.black,

                  ),

                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(question??'How not to miss new message?',style: TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize:getFontSize(16)  ,
                  ),textAlign: TextAlign.start,),
                  collapsedBackgroundColor:Colors.white,
                  collapsedTextColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  children: [

                    Padding(
                      padding: getPadding(bottom: getSize(16)),
                      child: Text(
                        'It is important to take care of the patient, to be followed '
                            'by the patient, but it will happen at such a time that '
                            'there is a lot of work and pain',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: getFontSize(16),
                      ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },init: HelpController(), );
  }
}
