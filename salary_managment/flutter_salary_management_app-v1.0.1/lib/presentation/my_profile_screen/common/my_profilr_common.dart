import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

class MyProfileCommon extends StatelessWidget {
  final String text;
  final String secondText;
  const MyProfileCommon({Key? key, required this.text, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return         Container(
      width: double.infinity,
      height: 79.v,
      decoration: ShapeDecoration(
        color: Color(0xFFF8F8F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 15.fSize,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              secondText,
              style: TextStyle(
                color: Color(0xFF151515),
                fontSize: 17.fSize,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
