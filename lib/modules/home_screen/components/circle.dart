import 'package:atoa_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 220,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,

          // boxShadow: [

          // ],
          border: Border.all(width: 3, color: AppColors.secondryBlue),
          boxShadow: []),
    );
  }
}
