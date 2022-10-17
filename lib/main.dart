import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers_shop/features/e_shop/presentation/bloc/navbar_cubit.dart';
import 'package:sneakers_shop/features/e_shop/presentation/pages/root_page/root_page.dart';

void main() {
  runApp(const SneakersShop());
}

class SneakersShop extends StatelessWidget {
  const SneakersShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'JosefinSans',
        ),
        home: const RootPage(),
      ),
    );
  }
}
