import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import 'package:portfolio_web/modules/home/presentation/widgets/my_app_bar.dart';
import 'package:portfolio_web/modules/home/presentation/widgets/page_one_content.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'home';
  static const String path = '/home';
  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              MyAppBar(),
              PageOneContent(),
              SizedBox(
                height: 800,
              ),
              SizedBox(
                height: 800,
              )
            ],
          ),
        ),
      ),
    );
  }
}
