import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DasAndTagBioCommit extends StatelessWidget {

  String? commit;
  double? fontSize;

  DasAndTagBioCommit({super.key,
    this.commit,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.circle_notifications, color: Colors.blue, fill: 1,),
        const SizedBox(width: 10,),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: commit,
                fontWeight: FontWeight.w500,
                fontFamily: "Rajdhani",
                letterSpacing: 1,
                fontSize: fontSize,
              ),
              const SizedBox(height: 10,),
            ],
          ),
        )

      ],
    );
  }
}
