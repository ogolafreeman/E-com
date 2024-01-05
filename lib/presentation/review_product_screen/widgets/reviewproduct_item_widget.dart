import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';
import 'package:jacktone_okwemba_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ReviewproductItemWidget extends StatelessWidget {
  const ReviewproductItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProfilePicture,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "James Lawson",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 5,
                    itemSize: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 333.h,
          child: Text(
            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(
              height: 1.80,
            ),
          ),
        ),
        SizedBox(height: 14.v),
        Text(
          "December 10, 2016",
          style: CustomTextStyles.bodySmall10,
        ),
      ],
    );
  }
}
