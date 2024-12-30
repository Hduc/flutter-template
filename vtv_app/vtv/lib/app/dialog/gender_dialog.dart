import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vtv/util/color_data.dart';

class GenderDialog extends StatefulWidget {
  const GenderDialog({Key? key}) : super(key: key);

  @override
  State<GenderDialog> createState() => _GenderDialogState();
}

class _GenderDialogState extends State<GenderDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.h),
      backgroundColor: getCardColor(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.h)),
      child: Column(
        children: [],
      ),
    );
  }
}
