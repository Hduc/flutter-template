import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';

class ReceivedMessageContainer extends StatelessWidget {
  final String? message;
  const ReceivedMessageContainer({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight:Radius.circular(16),bottomLeft: Radius.circular(16) ),
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
