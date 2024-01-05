import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title_searchview_one.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {SearchScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [GestureDetector(onTap: () {onTapTxtNikeAirMaxReact(context);}, child: Text("Nike Air Max 270 React ENG ", style: theme.textTheme.bodySmall)), SizedBox(height: 37.v), Text("Nike Air Vapormax 360", style: theme.textTheme.bodySmall), SizedBox(height: 34.v), Text("Nike Air Max 270 React ENG ", style: theme.textTheme.bodySmall), SizedBox(height: 36.v), Text("Nike Air Max 270 React", style: theme.textTheme.bodySmall), SizedBox(height: 37.v), Text("Nike Air VaporMax Flyknit 3", style: theme.textTheme.bodySmall), SizedBox(height: 35.v), Text("Nike Air Max 97 Utility", style: theme.textTheme.bodySmall), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 79.v, centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 10.h, right: 16.h), child: Row(children: [AppbarTitleSearchviewOne(hintText: "Nike Air Max", controller: searchController), AppbarTitleImage(imagePath: ImageConstant.imgMicIcon, margin: EdgeInsets.only(left: 28.h, top: 10.v, bottom: 10.v))])), SizedBox(height: 17.v), SizedBox(width: 369.h, child: Divider())]), styleType: Style.bgFill); } 
/// Navigates to the searchResultScreen when the action is triggered.
onTapTxtNikeAirMaxReact(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchResultScreen); } 
 }
