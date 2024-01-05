import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';
import 'package:jacktone_okwemba_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageProduct,
            height: 72.adaptSize,
            width: 72.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.h,
                    child: Text(
                      "Nike Air Zoom Pegasus 36 Miami",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLoveIconPink300,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      bottom: 11.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTrashIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      bottom: 11.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 227.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "299,43",
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 20.v,
                      width: 33.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlue50,
                      ),
                    ),
                    SizedBox(
                      height: 20.v,
                      width: 41.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 20.v,
                              width: 41.h,
                              decoration: BoxDecoration(
                                color: appTheme.blue50,
                                border: Border.all(
                                  color: appTheme.blue50,
                                  width: 1.h,
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(right: 17.h),
                                child: Text(
                                  "1",
                                  style: CustomTextStyles.bodySmallOnPrimary_2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 20.v,
                      width: 33.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlue50,
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
