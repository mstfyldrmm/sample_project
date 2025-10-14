import 'package:flutter/material.dart';

class YoutubeShortsWidget extends StatelessWidget {
  const YoutubeShortsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, bottom: 10),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(left: 12, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        color: Colors.white,
                        'assets/images/button.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  'DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..',
                ),
                Text(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  '24M views',
                ),
              ],
            ),
            width: 140,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/storyOne.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10);
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
