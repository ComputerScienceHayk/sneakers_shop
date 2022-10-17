import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/product_card.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_text.dart';

class MoreProducts extends StatelessWidget {
  const MoreProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.045,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.white, AppColors.grey],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          stops: [
            0.6,
            0.6,
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: 'More',
                  fontWeight: FontWeight.bold,
                ),
                IconButton(
                  onPressed: () {},
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(0.0),
                  icon: const Icon(Icons.arrow_right_alt),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: (size.height * 0.30),
            child: ListView.builder(
              itemCount: 20,
              padding: EdgeInsets.only(
                bottom: size.height * 0.025,
              ),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const ProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
