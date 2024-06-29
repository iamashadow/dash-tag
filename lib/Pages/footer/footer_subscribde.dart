import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSubscribe extends StatelessWidget {
  FooterSubscribe({
    super.key,
  });
  final MainController controller = Get.find();

  Future<void> launchEmail(
      {required String receiver,
      required String subject,
      required String body}) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: receiver,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      print('Could not launch $emailLaunchUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Do you have a project?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Leave your email and we will contact you as soon as possible',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13,
              height: 1.5,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            height: 54,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextField(
                      controller: controller.emailController,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 1.30,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type your message',
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.orange,
                  child: InkWell(
                    onTap: () => launchEmail(
                      receiver: 'kumar@dashandtags.com',
                      subject: 'New client inquiry from Dash & Tag website',
                      body: controller.emailController.text,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get a quote',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.75,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              FontAwesomeIcons.chevronRight,
                              color: Colors.white,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
