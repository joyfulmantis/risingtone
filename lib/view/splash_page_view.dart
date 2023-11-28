import 'package:flutter/material.dart';

import '../widgets/custom_loading_widget.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPageView());
  }

  @override
  Widget build(BuildContext context) {
    return const CustomLoadingWidget(debugLocation: "splash_page.dart");
  }
}
