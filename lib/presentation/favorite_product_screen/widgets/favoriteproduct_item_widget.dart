import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';
import 'package:jacktone_okwemba_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class FavoriteproductItemWidget extends StatelessWidget {
  const FavoriteproductItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProductImage2,
            height: 133.adaptSize,
            width: 133.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 107.h,
            child: Text(
              "Nike Air Max 270 React ENG",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 4,
          ),
          SizedBox(height: 18.v),
          Text(
            "299,43",
            style: CustomTextStyles.labelLargePrimary,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 9.v),
                child: Text(
                  "534,33",
                  style: CustomTextStyles.bodySmall10.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 9.v,
                ),
                child: Text(
                  "24% Off",
                  style: theme.textTheme.labelMedium,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTrashIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 17.h),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
