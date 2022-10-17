import 'package:flutter/material.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/product_page/product_page.dart';

class AnimatedSliderCard extends StatefulWidget {
  const AnimatedSliderCard({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;
  @override
  State<AnimatedSliderCard> createState() => _AnimatedSliderCardState();
}

class _AnimatedSliderCardState extends State<AnimatedSliderCard> {

  Color color = AppColors.teal;

  @override
  void initState() {
    if(widget.index == 0){
      setState(() {
        color = AppColors.teal;
      });
    } else if (widget.index % 2 == 0) {
      setState(() {
        color = AppColors.pink;
      });
    } else if(widget.index % 3 == 0 || widget.index == 1) {
      setState(() {
        color = AppColors.blue;
      });
    }
    super.initState();
  }

  double imageWidth = 220.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double imageWidth = size.width * 0.6;
    return Container(
      padding: const EdgeInsets.only(
        right: 10.0,
      ),
      child: GestureDetector(
          onTap: () {
            setState(() {
              imageWidth = 180;
            });
          },
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Card(
                    color: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(size.width * 0.05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.012,
                                  ),
                                  const Text('NIKE'),
                                  const Text('AIR-MAX'),
                                  const Text('\$130'),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_outline,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_right_alt),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 40,
                child: Hero(
                  tag: 'prod_img${widget.index}',
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 1500,),
                    width: imageWidth,
                    curve: Curves.easeInOut,
                    onEnd: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(index: widget.index,),
                        ),
                      );
                      setState(() {
                        imageWidth = 220.0;
                      });
                    },
                    child: Image.asset('assets/images/sneaker_01.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
