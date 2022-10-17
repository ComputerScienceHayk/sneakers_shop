import 'package:flutter/material.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/animated_slider_card.dart';

class AnimatedSlider extends StatelessWidget {
  const AnimatedSlider({
    required this.index,
    required this.percentage,
    required this.pageController,
    this.onPageChanged,
    Key? key,
  }) : super(key: key);

  final PageController pageController;

  final Function(int)? onPageChanged;
  final int index;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = 0.0;
        if (pageController.position.haveDimensions) {
          value = index.toDouble() - (pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(percentage),
          alignment: Alignment.centerLeft,
          child: AnimatedSliderCard(index: index,),
        );
      },
    );
  }
}
