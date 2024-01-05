import '../cart_page/widgets/cart_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_title.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_trailing_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_elevated_button.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {CartPage({Key? key}) : super(key: key);

TextEditingController cuponCodeController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v), child: Column(children: [_buildCart(context), SizedBox(height: 52.v), _buildCuponCode(context), SizedBox(height: 16.v), CustomElevatedButton(text: "Check Out", onPressed: () {onTapCheckOut(context);}), SizedBox(height: 8.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitle(text: "Your Cart", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationIcon, margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v), onTap: () {onTapNotificationIcon(context);})]); } 
/// Section Widget
Widget _buildCart(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 2, itemBuilder: (context, index) {return CartItemWidget();})); } 
/// Section Widget
Widget _buildTotalPriceDetails(BuildContext context) { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBlue50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [_buildShoppingPrice(context, shipping: "Items (3)", price: "598.86"), SizedBox(height: 16.v), _buildShoppingPrice(context, shipping: "Shipping", price: "40.00"), SizedBox(height: 14.v), _buildShoppingPrice(context, shipping: "Import charges", price: "128.00"), SizedBox(height: 12.v), Divider(), SizedBox(height: 10.v), _buildShoppingPrice(context, shipping: "Total Price", price: "766.86")])); } 
/// Section Widget
Widget _buildCuponCode(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomTextFormField(controller: cuponCodeController, hintText: "Enter Cupon Code", textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v))), CustomElevatedButton(width: 87.h, text: "Apply", buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer)]), SizedBox(height: 16.v), _buildTotalPriceDetails(context)])); } 
/// Common widget
Widget _buildShoppingPrice(BuildContext context, {required String shipping, required String price, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(shipping, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray300))), Text(price, style: CustomTextStyles.bodySmallOnPrimary.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1)))]); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationIcon(BuildContext context) { Navigator.pushNamed(context, AppRoutes.notificationScreen); } 
/// Navigates to the shipToScreen when the action is triggered.
onTapCheckOut(BuildContext context) { Navigator.pushNamed(context, AppRoutes.shipToScreen); } 
 }
