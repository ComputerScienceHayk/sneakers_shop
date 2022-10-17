import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/my_bag_page/my_bag_page.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/product_page/widgets/product_carousel.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/product_page/widgets/product_description.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_button.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_scaffold.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor:  const Color(0xffefa489),
        statusBarIconBrightness: Brightness.light),);
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: const Color(0xffefa489),
        title: const Text('Nike'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
                // Scaffold.of(context).;
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Container(
            width: 40.0,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RawMaterialButton(
              onPressed: () {},
              shape: const CircleBorder(),
              elevation: 5.0,
              fillColor: const Color(0xffefa489),
              padding: const EdgeInsets.all(5.0),
              child: const Icon(Icons.favorite_outline),
            ),
          ),
        ],
      ),
      body: Wrap(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height * 0.35,
                ),
                painter: CurvedPainter(),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.15,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Hero(
                        tag: 'prod_img$index',
                        child: Image.asset('assets/images/sneaker_01.png'),
                    ),
              ),
            ],
          ),
          const ProductCarousel(),
          const ProductDescription(),
        ],
      ),
      bottomNavigationBar: CustomButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyBagPage()),
          );
        },
        text: 'ADD TO BAG',
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xffefa489)
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.15, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.65);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
