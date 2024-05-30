import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderLeft extends StatelessWidget {
  const HeaderLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // crossAxisAlignment: isBigScreen
        //     ? CrossAxisAlignment.start
        //     : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderLeftTitle(isBigScreen: true),
          const SizedBox(height: 24),
          HeaderLeftSubtitle(pad: 10, isBigScreen: true),
          const SizedBox(height: 52),
          HeaderLeftInput(pad: 10),
        ],
      ),
    );
  }
}

class HeaderLeftInput extends StatelessWidget {
  const HeaderLeftInput({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      // margin:
      //     EdgeInsets.only(right: (72 * pad) + (120 * pad1), left: 120 * pad1),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.30,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your email',
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.blue,
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 72 - 16,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 'Get a quote'.poppins(
                        //   color: white,
                        //   height: 1.75,
                        //   fontWeight: FontWeight.w500,
                        // ),
                        Text('Get a quote',
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.75,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        const SizedBox(width: 10),
                        const Icon(
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
          ),
        ],
      ),
    );
  }
}

class HeaderLeftSubtitle extends StatelessWidget {
  const HeaderLeftSubtitle({
    Key? key,
    required this.pad,
    required this.isBigScreen,
  }) : super(key: key);

  final double pad;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return Text(
      'We are a team of talented designers making the best fashion for you.',
      textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        height: 1.5,
      ),
    );
    // 'We are a team of talented designers making the best fashion for you.'
    //     .poppins(
    //         textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
    //         fontSize: 24,
    //         fontWeight: FontWeight.w500,
    //         color: white,
    //         height: 1.5,
    //       );
  }
}

class HeaderLeftTitle extends StatelessWidget {
  const HeaderLeftTitle({Key? key, required this.isBigScreen})
      : super(key: key);
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Text(
        'Unleashing Fashion, One Piece at a Time',
        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
        style: GoogleFonts.stixTwoText(
          fontSize: 90,
          fontWeight: FontWeight.bold,
          color: Colors.green,
          height: 1.1,
        ),
      ),
      // 'Unleashing Fashion, One Piece at a Time'.stixTwoText(
      //   textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
      //   fontSize: 90,
      //   fontWeight: FontWeight.bold,
      //   color: greenlight,
      //   height: 1.1,
      // ),
    );
  }
}
