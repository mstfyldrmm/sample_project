import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GmailAppBarWidget extends StatelessWidget {
  const GmailAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //symetric genellikle kullan kalan kisimleri sizedbox ile hallet
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Color(0xFFF7F8FC),
        borderRadius: BorderRadius.circular(2000),
      ),
      child: Row(
        children: [
          //Container içindeki her widget için ayrı ayrı padding vermek mi best practice?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset('assets/images/menu.png', width: 24, height: 24),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Search in mail",
              style: GoogleFonts.georama(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
            child: Image.asset('assets/images/avatar.png'),
          ),
        ],
      ),
    );
  }
}
