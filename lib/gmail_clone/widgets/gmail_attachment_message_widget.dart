import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GmailAttachmentMessageWidget extends StatelessWidget {
  const GmailAttachmentMessageWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.imagePath,
    required this.date,
    required this.iconPath,
    required this.hasFile,
  });
  final String title;
  final String subTitle;
  final String description;
  final String imagePath;
  final String date;
  final String iconPath;
  final bool hasFile;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Row yapisinda best practise icerigi var
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.asset(
                  fit: BoxFit.cover,
                  imagePath,
                  width: 37,
                  height: 37,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: SizedBox(
                  width: screenWidth - 137,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.openSans(
                          color: Color(0xFF292929),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: GoogleFonts.openSans(
                          color: Color(0xFF292929),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        description,
                        style: GoogleFonts.openSans(
                          color: Color(0xFF292929),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),
                      hasFile
                          ? Row(
                              children: [
                                GmailFileWidget(
                                  iconPath: 'assets/images/pdf_icon.png',
                                  text: 'Pre-Order...',
                                ),

                                GmailFileWidget(
                                  iconPath: 'assets/images/image_icon.png',
                                  text: 'Image',
                                ),
                                Text(
                                  '+3',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                date,
                style: GoogleFonts.roboto(
                  color: Color(0xFF292929),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              Image.asset(iconPath),
            ],
          ),
        ],
      ),
    );
  }
}

class GmailFileWidget extends StatelessWidget {
  const GmailFileWidget({
    super.key,
    required this.iconPath,
    required this.text,
  });
  final String iconPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border.all(width: 1, color: Color(0xFFB3B2B3)),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath),
          SizedBox(width: 3),
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
