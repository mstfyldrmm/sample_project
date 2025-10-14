import 'package:flutter/material.dart';

class ShortsLogoWidget extends StatelessWidget {
  const ShortsLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Image.asset('assets/images/shorts.png'),
    );
  }
}
