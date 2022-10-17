import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyBagItem extends StatefulWidget {
  const MyBagItem({
    required this.index,
    required this.productImagePath,
    required this.productName,
    required this.productPrice,
    required this.productCount,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final int index;
  final String productImagePath;
  final String productName;
  final String productPrice;
  final int productCount;
  final ScrollController controller;

  @override
  State<MyBagItem> createState() => _MyBagItemState();
}

class _MyBagItemState extends State<MyBagItem> {
  double boxWidth = 10.0;
  double boxHeight = 10.0;

  double imageWidth = 10.0;
  double imageBottomPosition = -10.0;
  double imageLeftPosition = -10.0;

  Map<String, double> productNamePosition = {'right': -100.0, 'top': 0.0};
  Map<String, double> productPricePosition = {'right': -200.0, 'top': 30.0};
  Map<String, double> productCountPosition = {'right': -100.0, 'top': 60.0};

  @override
  void initState() {
    super.initState();
    if (widget.index > 0) {
      boxWidth = 90.0;
      boxHeight = 90.0;
      imageWidth = 120;
      imageBottomPosition = 28;
      imageLeftPosition = 20;

      productNamePosition['right'] = 0.0;
      productPricePosition['right'] = 0.0;
      productCountPosition['right'] = 0.0;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) => {
          if (widget.index == 0)
            {
              const Duration(seconds: 2),
              setState(() {
                boxWidth = 90.0;
                boxHeight = 90.0;
                imageWidth = 120;
                imageBottomPosition = 28;
                imageLeftPosition = 20;

                productNamePosition['right'] = 0.0;
                productPricePosition['right'] = 0.0;
                productCountPosition['right'] = 0.0;
              }),
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 140.0,
            alignment: Alignment.center,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1500),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                    width: boxWidth,
                    height: boxHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xffdbdce7),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    margin: const EdgeInsets.all(20.0),
                  ),
                ),
                AnimatedPositioned(
                  bottom: imageBottomPosition,
                  left: imageLeftPosition,
                  duration: const Duration(milliseconds: 1500),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    transformAlignment: Alignment.center,
                    curve: Curves.bounceInOut,
                    child: Transform.rotate(
                      angle: -math.pi / 12,
                      child: SizedBox(
                        width: imageWidth,
                        child: Image.asset(widget.productImagePath),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width - 200,
            height: 90.0,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1000),
                  width: size.width - 200,
                  right: productNamePosition['right'],
                  top: productNamePosition['top'],
                  child: Text(
                    widget.productName.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1500),
                  right: productPricePosition['right'],
                  top: productPricePosition['top'],
                  width: size.width - 200,
                  child: Text(
                    widget.productPrice,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 2000),
                  width: size.width - 200,
                  right: productCountPosition['right'],
                  top: productCountPosition['top'],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: removeProduct,
                        child: Container(
                          width: 30.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffe3e3e8),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        width: 30.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '${widget.productCount}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: addProduct,
                        child: Container(
                          width: 30.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xffe3e3e8),
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void removeProduct() {
    if (widget.index == 0) {
      const Duration(seconds: 2);
      setState(() {

         boxWidth = 0.0;
         boxHeight = 0.0;

         imageWidth = 0.0;
         imageBottomPosition = -10.0;
         imageLeftPosition = -10.0;

        productNamePosition['right'] = -200.0;
        productPricePosition['right'] = -200.0;
        productCountPosition['right'] = -200.0;

         widget.controller.animateTo(
           100.0,
           curve: Curves.elasticIn,
           duration: const Duration(milliseconds: 1500),
         );
      });
    }
  }

  void addProduct() {}
}
