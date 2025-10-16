import 'package:flutter/material.dart';

class CategoryButtonWidget extends StatelessWidget {
  const CategoryButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "All",
      "Mixes",
      "Music",
      "Graphics",
      "News",
      "Movies",
      "Live",
      "Fashion & Beauty",
      "Learning",
      "Sports",
    ];
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 10, left: 10, right: 10),
      width: double.infinity,
      height: 48,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFECECEC),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
            ),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 14, top: 4, bottom: 4, left: 6),
            child: Row(
              children: [
                Image.asset("assets/images/vector.png", width: 32, height: 32),
                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 4),
            child: VerticalDivider(
              color: Color(0xFFCECECE),
              thickness: 1,
              width: 20,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFECECEC),
                    border: Border.all(color: Color(0xFF6C6C6C), width: 1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 12,
                    right: 12,
                  ),
                  margin: EdgeInsets.all(4),
                  height: 30,
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
