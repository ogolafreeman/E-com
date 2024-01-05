import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Products1ItemWidget extends StatelessWidget {
  const Products1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgProductPicture02,
        height: 72.adaptSize,
        width: 72.adaptSize,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
