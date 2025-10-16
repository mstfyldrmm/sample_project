import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/gmail_clone/widgets/gmail_app_bar_widget.dart';
import 'package:sample_project/gmail_clone/widgets/gmail_attachment_message_widget.dart';
import 'package:sample_project/gmail_clone/widgets/gmail_bottom_bar_widget.dart';
import 'package:sample_project/gmail_clone/widgets/message_info.dart';

class GmailMainScreen extends StatelessWidget {
  const GmailMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {
        'hasFile': true,
        'date': '11:27 pm',
        'title': 'Fortune Company co.',
        'subTitle': 'Important Files!',
        'description': 'Make sure you receive these.',
        'imagePath': 'assets/images/fortune.jpg',
        'iconPath': 'assets/images/favorite_icon.png',
      },
      {
        'hasFile': false,
        'date': '11:27 pm',
        'title': 'Stephanie Everhill',
        'subTitle': 'When do we meet again?',
        'description': 'I would meet at the Western Mall if you..',
        'imagePath': 'assets/images/stephanie.jpg',
        'iconPath': 'assets/images/vector.png',
      },
      {
        'hasFile': false,
        'date': 'June 19',
        'title': 'Random Bank Online',
        'subTitle': 'Random Bank Account Balance Update',
        'description': 'Time to check your bank information an..',
        'imagePath': 'assets/images/random.png',
        'iconPath': 'assets/images/vector.png',
      },
      {
        'hasFile': false,
        'date': 'May 6',
        'title': 'Taylor Grey',
        'subTitle': 'Timesheet nextweek?',
        'description': 'Hey what was our timesheet that was for..',
        'imagePath': 'assets/images/taylor.jpg',
        'iconPath': 'assets/images/favorite_icon.png',
      },
      {
        'hasFile': false,
        'date': 'May 6',
        'title': 'UniqueYou by SecretKissShop',
        'subTitle': 'Learn new Tricks',
        'description': 'Now is great time to shop great new fash..',
        'imagePath': 'assets/images/unique.jpg',
        'iconPath': 'assets/images/vector.png',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GmailAppBarWidget(),
                SizedBox(height: 18),
                //dikey bosluklar sizedbox, yataylarda padding ile halledilir.
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Primary",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0xFF4F4F4F),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                MessageInfo(),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap:
                        true, // Column veya ScrollView içindeyse gerekli
                    // Scroll çakışmasını engeller
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final msg = messages[index];
                      return GmailAttachmentMessageWidget(
                        hasFile: msg['hasFile'],
                        date: msg['date'],
                        title: msg['title'],
                        subTitle: msg['subTitle'],
                        description: msg['description'],
                        imagePath: msg['imagePath'],
                        iconPath: msg['iconPath'],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 18),
                  ),
                ),
                SizedBox(height: 58),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GmailBottomBarWidget(),
          ),
        ],
      ),
    );
  }
}
