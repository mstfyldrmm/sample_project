import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.iconImagePath,
    required this.firsFramePath,
    required this.secondFramePath,
    required this.thirdFramePath,
    required this.fourhFramePath,
  });
  final String iconImagePath;
  final String firsFramePath;
  final String secondFramePath;
  final String thirdFramePath;
  final String fourhFramePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      padding: EdgeInsets.all(2),
      width: double.infinity,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(iconImagePath, height: double.infinity, width: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(firsFramePath, width: 24, height: 24),
              SizedBox(width: 12),
              Image.asset(secondFramePath, width: 24, height: 24),
              SizedBox(width: 12),
              Image.asset(thirdFramePath, width: 24, height: 24),
              SizedBox(width: 12),
              Image.asset(fourhFramePath, width: 24, height: 24),
            ],
          ),
        ],
      ),
    );
  }
}
