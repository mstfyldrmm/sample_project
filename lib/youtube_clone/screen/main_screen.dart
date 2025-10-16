import 'package:flutter/material.dart';
import 'package:sample_project/youtube_clone/widgets/bottom_bar_widget.dart';
import 'package:sample_project/youtube_clone/widgets/category_button_widget.dart';
import 'package:sample_project/youtube_clone/widgets/divider_widget.dart';
import 'package:sample_project/youtube_clone/widgets/app_bar_widget.dart';
import 'package:sample_project/youtube_clone/widgets/youtube_post_widget.dart';
import 'package:sample_project/youtube_clone/widgets/youtube_shorts_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar kendi tasarımim olmali
      //flutter screen util arastir
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
                Expanded(
                  child: SingleChildScrollView(
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
                        YoutubeShortsWidget(),
                        YoutubePostWidget(),
                        YoutubePostWidget(),
                        YoutubeShortsWidget(),
                        YoutubePostWidget(),
                        YoutubeShortsWidget(),
                      ],
                    ),
                  ),
                ),
                Divider(height: 1),
              ],
            ),
            Positioned(left: 0, right: 0, bottom: 0, child: BottomBarWidget()),
          ],
        ),
      ),
    );
  }
}
