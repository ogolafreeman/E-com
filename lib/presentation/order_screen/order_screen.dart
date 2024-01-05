import '../order_screen/widgets/orders_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';class OrderScreen extends StatelessWidget {const OrderScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 15.h, top: 19.v, right: 15.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.0.v), child: SizedBox(width: 344.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blue50)));}, itemCount: 3, itemBuilder: (context, index) {return OrdersItemWidget();})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Order", margin: EdgeInsets.only(left: 12.h))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
