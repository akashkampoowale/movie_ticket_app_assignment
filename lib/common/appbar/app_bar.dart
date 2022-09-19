import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/common/resource/decorations.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';

class DefaultAppBar extends StatelessWidget {
  final String appBarTitle;
  const DefaultAppBar({Key? key, this.appBarTitle = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: circularBtnDecoration1,
              child: const Icon(Icons.arrow_back),
            ),

            Text(appBarTitle,style: textStyleTitle2.copyWith(color: Colors.white),),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: circularBtnDecoration1.copyWith(color: circularBtnColor2),
              child: const Icon(Icons.keyboard_control_sharp),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
