import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GmailBottomBarWidget extends StatelessWidget {
  const GmailBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F8FC),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 58, top: 8, bottom: 38),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFCEEAFE),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Image.asset('assets/images/mail.png'),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xFFEA4335),

                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Text(
                      '10',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 82, bottom: 33),
            child: Image.asset('assets/images/video_icon.png'),
          ),
        ],
      ),
    );
  }
}
