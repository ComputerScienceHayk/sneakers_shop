import 'package:flutter/material.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/filter_by_condition.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/more_products.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/product_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        ProductCategories(),
        FilterByCondition(),
        MoreProducts(),
      ],
    );
  }
}
