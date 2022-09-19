import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/common/resource/gradients.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';

class DateTimeButton extends StatelessWidget {
  final String day;
  final String date;
  final String time;
  final double bottomPadding;
  final double width;
  final double cardTopPadding;
  final double cardBottomPadding;
  final Gradient dateTimePickerGradient;

  const DateTimeButton({
    Key? key,
    required this.date,
    required this.day,
    required this.time,
    this.bottomPadding = 20,
    this.width = 55,
    this.cardTopPadding = 16,
    this.cardBottomPadding = 16,
    this.dateTimePickerGradient = reservationBtnGradientDefault,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Column(
        children: [
          Container(
            width: width,
            decoration: BoxDecoration(
              gradient: dateTimePickerGradient,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: cardTopPadding,
                bottom: cardBottomPadding,
              ),
              child: Column(
                children: [
                  //Day
                  Text(
                    day,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: textStyleLabel1.copyWith(
                      color: selectDayTextColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Date
                  Text(
                    date,
                    textAlign: TextAlign.center,
                    style: textStyleLabel1,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: width,
            decoration: BoxDecoration(
              gradient: dateTimePickerGradient,
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),

              //time
              child: Text(
                time,
                textAlign: TextAlign.center,
                style: textStyleLabel1.copyWith(
                  color: selectDayTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
