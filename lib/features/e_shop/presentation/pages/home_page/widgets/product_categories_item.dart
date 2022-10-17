import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_text.dart';

class ProductCategoriesItem extends StatefulWidget {
  const ProductCategoriesItem({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  State<ProductCategoriesItem> createState() => _ProductCategoriesItemState();
}

class _ProductCategoriesItemState extends State<ProductCategoriesItem> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.17,
      height: 20.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, AppColors.grey],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            stops: [
              0.8,
              0.8,
            ],
          ),
        ),
        child: CustomText(
          text: widget.text,
          fontSize: size.width * 0.045,
        ),
      ),
    );
  }
}
