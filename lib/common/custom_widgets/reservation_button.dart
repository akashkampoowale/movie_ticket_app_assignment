import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/gradients.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';

class ReservationButton extends StatelessWidget {
  final String buttonText;
  final Function onButtonTap;

  const ReservationButton({
    Key? key,
    required this.buttonText,
    required this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: reservationBtnGradient,
        borderRadius: BorderRadius.circular(20),
      ),

      //reservation btn text
      child: Padding(
        padding: const EdgeInsets.only(
          left: 124,
          right: 124,
          top: 17,
          bottom: 17,
        ),
        child: Text(
          buttonText,
          style: textStyleBtnLabel1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
