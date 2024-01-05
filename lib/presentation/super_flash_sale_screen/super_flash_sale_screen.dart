import '../super_flash_sale_screen/widgets/superflashsale_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';class SuperFlashSaleScreen extends StatelessWidget {const SuperFlashSaleScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 26.v, right: 16.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 5, itemBuilder: (context, index) {return SuperflashsaleItemWidget();})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Super Flash Sale", margin: EdgeInsets.only(left: 12.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNavExplore, margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 17.v), onTap: () {onTapSearchIcon(context);})]); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the searchScreen when the action is triggered.
onTapSearchIcon(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchScreen); } 
 }
