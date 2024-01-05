import '../review_product_screen/widgets/reviewproduct_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_elevated_button.dart';class ReviewProductScreen extends StatelessWidget {const ReviewProductScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 18.v), _buildReviewProduct(context)])), bottomNavigationBar: _buildWriteReview(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "5 Review", margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildReviewProduct(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 19.h, right: 23.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 32.v);}, itemCount: 5, itemBuilder: (context, index) {return ReviewproductItemWidget();}))); } 
/// Section Widget
Widget _buildWriteReview(BuildContext context) { return CustomElevatedButton(text: "Write Review", margin: EdgeInsets.only(left: 19.h, right: 13.h, bottom: 58.v), onPressed: () {onTapWriteReview(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the writeReviewFillScreen when the action is triggered.
onTapWriteReview(BuildContext context) { Navigator.pushNamed(context, AppRoutes.writeReviewFillScreen); } 
 }
