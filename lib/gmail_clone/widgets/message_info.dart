import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageInfo extends StatelessWidget {
  const MessageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 21, right: 12, bottom: 18),
      child: Column(
        children: [
          CustomListTile(
            imagePath: 'assets/images/social.png',
            title: 'Social',
            subtitle: 'Twitter, Twitter Message',
            newMessages: '2 new',
            containerColor: const Color(0xFF1A73E9),
          ),
          SizedBox(height: 10),
          CustomListTile(
            imagePath: 'assets/images/promotion.png',
            title: 'Promotions',
            subtitle: 'Netflix New Arrivals, Bank',
            newMessages: '99+ new',
            containerColor: const Color(0xFF45BF6B),
          ),
        ],
      ),
    );
  }
}

//Bunu bilerek bu sekilde yaptim.
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.newMessages,
    required this.containerColor,
  });
  final String imagePath;
  final String title;
  final String subtitle;
  final String newMessages;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 13, right: 24),
          child: Image.asset(imagePath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF292929),
              ),
            ),
            Text(
              subtitle,
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF292929),
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 22,
          padding: EdgeInsets.only(
            top: 1.5,
            left: 5.5,
            right: 5.5,
            bottom: 3.5,
          ),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            newMessages,
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ],
    );
  }
}
