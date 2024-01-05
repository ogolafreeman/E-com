import '../credit_card_and_debit_screen/widgets/cards_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_elevated_button.dart';class CreditCardAndDebitScreen extends StatelessWidget {const CreditCardAndDebitScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 8.v), _buildCards(context), Spacer()])), bottomNavigationBar: _buildAddCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Credit Card And Debit", margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildCards(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: 2, itemBuilder: (context, index) {return CardsItemWidget(onTapCreditCardItem: () {onTapCreditCardItem(context);});})); } 
/// Section Widget
Widget _buildAddCard(BuildContext context) { return CustomElevatedButton(text: "Add Card", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCard(context);}); } 
/// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
onTapCreditCardItem(BuildContext context) { Navigator.pushNamed(context, AppRoutes.lailyfaFebrinaCardScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the addCardScreen when the action is triggered.
onTapAddCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addCardScreen); } 
 }
