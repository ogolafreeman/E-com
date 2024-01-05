import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jacktone_okwemba_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_elevated_button.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {AddCardScreen({Key? key}) : super(key: key);

TextEditingController cardNumberController = TextEditingController();

TextEditingController expirationDateController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardNumberController1 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v), child: Column(children: [_buildCardNumber(context), SizedBox(height: 24.v), _buildExpirationDate(context), SizedBox(height: 29.v), _buildSecurityCode(context), SizedBox(height: 23.v), _buildCardHolder(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildAddCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Add Card", margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildCardNumber(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Card Number", style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: cardNumberController, hintText: "Enter Card Number", textInputType: TextInputType.number)]); } 
/// Section Widget
Widget _buildExpirationDate(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Expiration Date", style: theme.textTheme.titleSmall), SizedBox(height: 11.v), CustomTextFormField(controller: expirationDateController, hintText: "Expiration Date")]); } 
/// Section Widget
Widget _buildSecurityCode(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Security Code", style: theme.textTheme.titleSmall), SizedBox(height: 11.v), CustomTextFormField(controller: securityCodeController, hintText: "Security Code")]); } 
/// Section Widget
Widget _buildCardHolder(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Card Holder", style: theme.textTheme.titleSmall), SizedBox(height: 12.v), CustomTextFormField(controller: cardNumberController1, hintText: "Enter Card Number", textInputAction: TextInputAction.done, textInputType: TextInputType.number)]); } 
/// Section Widget
Widget _buildAddCard(BuildContext context) { return CustomElevatedButton(text: "Add Card", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCard(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
onTapAddCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen); } 
 }
