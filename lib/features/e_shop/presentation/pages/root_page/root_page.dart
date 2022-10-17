import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/home_page.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/bottom_nav_menu.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_scaffold.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_text.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: 'Discover',
          fontWeight: FontWeight.bold,
          fontSize: size.width * 0.09,
        ),
        actions: [
          RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            elevation: 0.0,
            fillColor: AppColors.grey,
            constraints: BoxConstraints(
              maxWidth: size.width * 0.2,
            ),
            padding: EdgeInsets.all(size.width * 0.01),
            child: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            elevation: 0.0,
            fillColor: AppColors.grey,
            constraints:  BoxConstraints(
              maxWidth: size.width * 0.2,
            ),
            padding: EdgeInsets.all(size.width * 0.01),
            child: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const HomePage(),
      bottomNavigationBar: const BottomNavMenu(),
    );
  }
}
