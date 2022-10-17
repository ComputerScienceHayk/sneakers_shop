import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: (size.width * 0.5) - 15,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            child: Card(
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outline),
                    ),
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: 'Name of product',
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      CustomText(
                        text: '\$170.00',
                        fontSize: size.width * 0.04,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: -size.width * 0.03,
            top: size.height * 0.05,
            child: Transform.rotate(
              angle: -pi / 2,
              child: Container(
                width: size.width * 0.2,
                height: size.height * 0.022,
                alignment: Alignment.center,
                color: AppColors.red,
                child: CustomText(
                  text: 'NEW',
                  fontSize: size.width * 0.03,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.1,
            bottom: size.height * 0.09,
            child:  Transform.rotate(
              angle:  pi * 0.09,
              child: SizedBox(
                width: 120.0,
                child: Image.asset('assets/images/sneaker_01.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
