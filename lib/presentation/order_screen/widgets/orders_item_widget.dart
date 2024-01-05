import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class OrdersItemWidget extends StatelessWidget {
  const OrdersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "SDG1345KJD",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "Order at E-com : August 1, 2017",
                style: CustomTextStyles.bodySmallOnPrimary_1,
              ),
            ),
          ),
          SizedBox(height: 38.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Order Status",
                    style: CustomTextStyles.bodySmallOnPrimary_1,
                  ),
                ),
              ),
              Text(
                "Shipping",
                style: CustomTextStyles.bodySmallOnPrimary,
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "Items",
                      style: CustomTextStyles.bodySmallOnPrimary_1,
                    ),
                  ),
                ),
                Text(
                  "1 Items purchased",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Price",
                    style: CustomTextStyles.bodySmallOnPrimary_1,
                  ),
                ),
                Text(
                  "299,43",
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
