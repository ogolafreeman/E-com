import '../search_result_screen/widgets/searchresult_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title_searchview_two.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_drop_down.dart';
// ignore_for_file: must_be_immutable
class SearchResultScreen extends StatelessWidget {SearchResultScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), child: Column(children: [_buildResultCounter(context), SizedBox(height: 16.v), _buildSearchResult(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 79.v, centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(children: [AppbarTitleSearchviewTwo(hintText: "Nike Air Max", controller: searchController), AppbarTitleImage(imagePath: ImageConstant.imgShortIcon, margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v), onTap: () {onTapShortIcon(context);}), AppbarTitleImage(imagePath: ImageConstant.imgFilter, margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v))])), SizedBox(height: 18.v), SizedBox(width: double.maxFinite, child: Divider())]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildResultCounter(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.5, child: Padding(padding: EdgeInsets.only(top: 1.v, bottom: 4.v), child: Text("145 Result", style: CustomTextStyles.labelLargeOnPrimary))), CustomDropDown(width: 103.h, icon: Container(margin: EdgeInsets.only(left: 8.h), child: CustomImageView(imagePath: ImageConstant.imgDownIcon, height: 24.adaptSize, width: 24.adaptSize)), hintText: "Man Shoes", items: dropdownItemList, onChanged: (value) {})]); } 
/// Section Widget
Widget _buildSearchResult(BuildContext context) { return Expanded(child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 283.v, crossAxisCount: 2, mainAxisSpacing: 13.h, crossAxisSpacing: 13.h), physics: BouncingScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return SearchresultItemWidget();})); } 
/// Navigates to the sortByScreen when the action is triggered.
onTapShortIcon(BuildContext context) { Navigator.pushNamed(context, AppRoutes.sortByScreen); } 
 }
