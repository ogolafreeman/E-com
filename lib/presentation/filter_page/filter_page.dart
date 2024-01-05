import '../filter_page/widgets/buyingformate_item_widget.dart';import '../filter_page/widgets/itemlocation_item_widget.dart';import '../filter_page/widgets/showonly_item_widget.dart';import 'package:flutter/material.dart';import 'package:jacktone_okwemba_s_application1/core/app_export.dart';import 'package:jacktone_okwemba_s_application1/widgets/custom_elevated_button.dart';class FilterPage extends StatefulWidget {const FilterPage({Key? key}) : super(key: key);

@override FilterPageState createState() =>  FilterPageState();

 }
class FilterPageState extends State<FilterPage> with  AutomaticKeepAliveClientMixin<FilterPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildBuyingFormat(context), SizedBox(height: 23.v), _buildItemLocation(context), SizedBox(height: 25.v), _buildShowOnly(context), SizedBox(height: 28.v), CustomElevatedButton(text: "Apply", onPressed: () {onTapApply(context);})]))]))))); } 
/// Section Widget
Widget _buildBuyingFormat(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Buying Format", style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(5, (index) => BuyingformateItemWidget()))]); } 
/// Section Widget
Widget _buildItemLocation(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Item Location", style: theme.textTheme.titleSmall), SizedBox(height: 13.v), Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(4, (index) => ItemlocationItemWidget()))]); } 
/// Section Widget
Widget _buildShowOnly(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Show Only", style: theme.textTheme.titleSmall), SizedBox(height: 10.v), Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(11, (index) => ShowonlyItemWidget()))]); } 
/// Navigates to the searchResultScreen when the action is triggered.
onTapApply(BuildContext context) { Navigator.pushNamed(context, AppRoutes.searchResultScreen); } 
 }
