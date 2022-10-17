import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 5.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: (size.width * 0.8) / 4,
            height: 40.0,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: AppColors.cardGrey,
            ),
            child: Transform.rotate(
                angle: pi * 0.12,
                child: Image.asset(
                    'assets/images/sneaker_01.png'),
            ),
          ),
          Container(
            width: (size.width * 0.8) / 4,
            height: 40.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: AppColors.cardGrey,
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateX(-0.2)
                ..rotateX(-0.7),
                child: Image.asset(
                    'assets/images/sneaker_01.png'),
            ),
          ),
          Container(
            width: (size.width * 0.8) / 4,
            height: 40.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: AppColors.cardGrey,
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
            child: Image.asset('assets/images/sneaker_01.png'),
          ),
          Container(
            width: (size.width * 0.8) / 4,
            height: 40.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: AppColors.cardGrey,
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
            child: Image.asset('assets/images/sneaker_01.png'),
          ),
        ],
      ),
    );
  }
}
