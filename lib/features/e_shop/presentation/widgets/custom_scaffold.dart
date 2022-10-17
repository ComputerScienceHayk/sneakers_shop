import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    required this.body,
    this.appBar,
    this.bottomSheet,
    this.bottomNavigationBar,
    Key? key,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: appBar,
        body: body,
        bottomSheet: bottomSheet,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
