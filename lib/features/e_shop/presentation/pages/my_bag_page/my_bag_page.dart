import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sneakers_shop/core/constants/app_colors.dart';
import 'package:sneakers_shop/core/constants/texts.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/my_bag_page/widgets/my_bag_item.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_button.dart';
import 'package:sneakers_shop/features/e_shop/presentation/widgets/custom_scaffold.dart';

class MyBagPage extends StatefulWidget {
  const MyBagPage({Key? key}) : super(key: key);

  @override
  State<MyBagPage> createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  final ScrollController _controller = ScrollController(initialScrollOffset: -120);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => {

      _controller.animateTo(
      -120.0,
      curve: Curves.elasticIn,
      duration: const Duration(milliseconds: 1500),
      ),
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return CustomScaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black,),
                onPressed: () {
                  Navigator.of(context).pop(true);
                  },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.symmetric(horizontal: 10.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const Text(
                        'My Bag',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Total 3 item',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                ),
              ),
          ),
        ),
        body: ListView.builder(
          itemCount: 20,
          controller: _controller,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return MyBagItem(
              index: index,
              productImagePath: 'assets/images/sneaker_01.png',
              productName: 'product name',
              productPrice: 'product price',
              productCount: 3,
              controller: _controller,
            );
          },
        ),
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'TOTAL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$510.40',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          onTap: () {},
          text: Texts.next,
        ),
    );
  }
}
