import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserItemWidget extends StatelessWidget {
  const UserItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 22.v,
            width: 36.h,
            margin: EdgeInsets.only(left: 3.h),
          ),
          SizedBox(height: 30.v),
          Text(
            "6326    9124    8124    9875",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 17.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "CARD HOLDER",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer10,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "Dominic Ovo",
                      style: CustomTextStyles.labelMediumOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 37.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "CARD SAVE",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer10,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "06/24",
                        style: CustomTextStyles.labelMediumOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
