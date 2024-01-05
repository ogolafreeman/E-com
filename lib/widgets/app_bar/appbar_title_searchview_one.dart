import 'package:flutter/material.dart';
import 'package:jacktone_okwemba_s_application1/core/app_export.dart';
import 'package:jacktone_okwemba_s_application1/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewOne extends StatelessWidget {
  AppbarTitleSearchviewOne({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 263.h,
        controller: controller,
        hintText: "Nike Air Max",
      ),
    );
  }
}
