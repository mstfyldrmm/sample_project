import 'package:flutter/material.dart';
import 'package:sample_project/widgets/bottom_bar_widget.dart';
import 'package:sample_project/widgets/category_button_widget.dart';
import 'package:sample_project/widgets/divider_widget.dart';
import 'package:sample_project/widgets/app_bar_widget.dart';
import 'package:sample_project/widgets/shorts_logo_widget.dart';
import 'package:sample_project/widgets/youtube_post_widget.dart';
import 'package:sample_project/widgets/youtube_shorts_widget.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar kendi tasarımim olmali
      //flutter screen util arastir
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              firsFramePath: "assets/images/frame.png",
              secondFramePath: "assets/images/ring.png",
              thirdFramePath: "assets/images/search.png",
              fourhFramePath: "assets/images/user.png",
              iconImagePath: "assets/images/youtube.png",
            ),
            DividerWidget(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryButtonWidget(),
                  YoutubePostWidget(),
                  Container(
                    width: double.infinity,
                    height: 5,
                    color: Color(0xFFECECEC),
                  ),
                  ShortsLogoWidget(),
                  YoutubeShortsWidget(),
                ],
              ),
            ),
            Divider(height: 1),
            BottomBarWidget(),
          ],
        ),
      ),
    );
  }
}
