import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Divider(
        color: Color(0xFFCECECE),
        radius: BorderRadius.all(Radius.circular(0.5)),
      ),
    );
  }
}
