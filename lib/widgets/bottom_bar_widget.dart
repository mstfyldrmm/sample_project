import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/home.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/shorts_new.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/plus.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/subscription.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/library.png'),
          ),
        ],
      ),
    );
  }
}
