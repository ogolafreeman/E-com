import '../offer_screen_page/widgets/offerscreen_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';class OfferScreenPage extends StatelessWidget {const OfferScreenPage({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v), child: Column(children: [_buildCuponPromotion(context), SizedBox(height: 16.v), _buildOfferScreen(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitle(text: "Offer", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationIcon, margin: EdgeInsets.fromLTRB(13.h, 16.v, 13.h, 15.v), onTap: () {onTapNotificationIcon(context);})]); } 
/// Section Widget
Widget _buildCuponPromotion(BuildContext context) { return Container(width: 343.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 201.h, child: Text("Use “MEGSL” Cupon For Get 90%off", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMediumOnPrimaryContainer.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildOfferScreen(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 2, itemBuilder: (context, index) {return OfferscreenItemWidget();}); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationIcon(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
 }
