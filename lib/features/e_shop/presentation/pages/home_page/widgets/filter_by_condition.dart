import 'package:flutter/material.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/home_page/widgets/animated_slider.dart';
import 'dart:math' as math;

class FilterByCondition extends StatefulWidget {
  const FilterByCondition({Key? key}) : super(key: key);

  @override
  State<FilterByCondition> createState() => _FilterByConditionState();
}

class _FilterByConditionState extends State<FilterByCondition> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.65,
  );
  final ValueNotifier<double> _notiferScroll = ValueNotifier(0.0);

  void _listener() {
    _notiferScroll.value = _pageController.page ?? 0;
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_listener);
    _pageController.dispose();
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: SizedBox(
              width: size.width * 0.2,
              height: size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Transform.rotate(
                    angle: -math.pi / 2,
                    child: Container(
                      height: size.width * 0.20,
                      alignment: Alignment.center,
                      child: const Text('Upcoming'),
                    ),
                  ),
                  Transform.rotate(
                    angle: -math.pi / 2,
                    child: Container(
                      height: size.width * 0.20,
                      alignment: Alignment.center,
                      child: const Text('Featured'),
                    ),
                  ),
                  Transform.rotate(
                    angle: -math.pi / 2,
                    child: Container(
                      height: size.width * 0.20,
                      alignment: Alignment.center,
                      child: const Text('New'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              width: size.width,
              height: size.height * 0.4,
              // padding: EdgeInsets.only(left: size.width * 0.2),
              child: ValueListenableBuilder<double>(
                valueListenable: _notiferScroll,
                builder: (context, value, _) {
                  return PageView.builder(
                    itemCount: 10,
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      final percentage = index - value;
                      if (index == 1) {
                        print(percentage);
                      }
                      return AnimatedSlider(
                        onPageChanged: (i) {},
                        pageController: _pageController,
                        index: index,
                        percentage: percentage,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
