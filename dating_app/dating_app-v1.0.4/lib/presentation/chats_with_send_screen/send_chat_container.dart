import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';

class SendContainer extends StatelessWidget {
  final String? message;
  const SendContainer({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFF7F0FD),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomRight:Radius.circular(16),bottomLeft: Radius.circular(16) ),
      ),
      child: Padding(
        padding: getPadding(left: 16,right: 16,top: 11,bottom: 11),
        child: Text(message??'Hi jenny...',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: getFontSize(16),
        ),),
      ),
    );
  }
}
