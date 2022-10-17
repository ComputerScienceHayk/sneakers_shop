import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_values.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/product_categories_item.dart';


class ProductCategories extends StatefulWidget{
  const ProductCategories({super.key});

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.03,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.015,),
      alignment: Alignment.topCenter,
      child: ListView.builder(
        itemCount: AppValues.productCategories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: ProductCategoriesItem(
              text: AppValues.productCategories[index],
            ),
          );
        },
      ),
    );
  }
}
