import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';class PaymentMethodScreen extends StatelessWidget {const PaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [_buildPaymentOption(context, paypalIcon: ImageConstant.imgCreditCardIcon, paypal: "Credit Card Or Debit", onTapPaymentOption: () {onTapPaymentOption(context);}), _buildPaymentOption(context, paypalIcon: ImageConstant.imgPaypalIcon, paypal: "Paypal"), SizedBox(height: 5.v), _buildPaymentOption(context, paypalIcon: ImageConstant.imgBankIcon, paypal: "Bank Transfer")])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Payment", margin: EdgeInsets.only(left: 12.h))); } 
/// Common widget
Widget _buildPaymentOption(BuildContext context, {required String paypalIcon, required String paypal, Function? onTapPaymentOption, }) { return GestureDetector(onTap: () {onTapPaymentOption!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(children: [CustomImageView(imagePath: paypalIcon, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v), child: Text(paypal, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))]))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the chooseCreditOrDebitCardScreen when the action is triggered.
onTapPaymentOption(BuildContext context) { Navigator.pushNamed(context, AppRoutes.chooseCreditOrDebitCardScreen); } 
 }
