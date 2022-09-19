import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/decorations.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';

class DefaultAppBar extends StatelessWidget {
  final String appBarTitle;
  final Color appBarBackBtnColor;
  final Color appBarOptionBtnColor;
  final Icon appBarOptionIcon;

  const DefaultAppBar({
    Key? key,
    this.appBarTitle = '',
    required this.appBarBackBtnColor,
    required this.appBarOptionBtnColor,
    required this.appBarOptionIcon,
  }) : super(key: key);

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
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration:
                    circularBtnDecoration1.copyWith(color: appBarBackBtnColor),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            Text(
              appBarTitle,
              style: textStyleTitle2.copyWith(color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  circularBtnDecoration1.copyWith(color: appBarOptionBtnColor),
              child: appBarOptionIcon,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
