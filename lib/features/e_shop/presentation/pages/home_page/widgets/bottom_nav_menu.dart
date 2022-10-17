import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/features/e_shop/presentation/bloc/navbar_cubit.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_bottom_nav_bar.dart';

class BottomNavMenu extends StatelessWidget {
  const BottomNavMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return BlocConsumer<NavbarCubit, NavbarState>(
       listener: (context, state) {},
       builder: (context, state) {
         var cubit = NavbarCubit.get(context);
         return CustomBottomNavBar(
          onChange: (index) {
            cubit.changeBottomNavBar(index);
            switch(index) {
              case 0:
                break;
              case 1:
                break;
              case 2:
                break;
              case 3:
                break;
              case 4:
                break;
            }
          },
          defaultSelectedIndex: 0,
          backgroundColor: AppColors.grey,
          showLabel: false,
          iconList: const [
            Icons.home_outlined,
            Icons.favorite_outline,
            Icons.add_home,
            Icons.shopping_cart_outlined,
            Icons.person_outline,
          ],
        );
      }
    );
  }
}
