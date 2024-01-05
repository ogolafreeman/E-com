import '../explore_page/widgets/categories1_item_widget.dart';import '../explore_page/widgets/categories_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title_searchview.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {ExplorePage({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), child: Column(children: [_buildManFashion(context), SizedBox(height: 37.v), _buildWomanFashion(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitleSearchview(margin: EdgeInsets.only(left: 16.h), hintText: "Search Product", controller: searchController), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgLoveIcon, margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h)), Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgNotificationIcon, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center, onTap: () {onTapImgNotificationIcon(context);}), CustomImageView(imagePath: ImageConstant.imgClosePink300, height: 8.adaptSize, width: 8.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(left: 14.h, right: 2.h, bottom: 16.v))]))]); } 
/// Section Widget
Widget _buildManFashion(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Man Fashion", style: theme.textTheme.titleSmall), SizedBox(height: 13.v), GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 94.v, crossAxisCount: 4, mainAxisSpacing: 21.h, crossAxisSpacing: 21.h), physics: NeverScrollableScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return CategoriesItemWidget();})]); } 
/// Section Widget
Widget _buildWomanFashion(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Woman Fashion", style: theme.textTheme.titleSmall), SizedBox(height: 13.v), GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 93.v, crossAxisCount: 4, mainAxisSpacing: 21.h, crossAxisSpacing: 21.h), physics: NeverScrollableScrollPhysics(), itemCount: 7, itemBuilder: (context, index) {return Categories1ItemWidget();})]); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapImgNotificationIcon(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
 }
