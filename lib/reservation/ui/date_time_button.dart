import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/common/resource/gradients.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';

class DateTimeButton extends StatefulWidget {
  final DateTimeDetails dateTimeDetails;

  final Function onDateTimeSelected;

  const DateTimeButton({
    Key? key,
    required this.dateTimeDetails,
    required this.onDateTimeSelected,
  }) : super(key: key);

  @override
  State<DateTimeButton> createState() => _DateTimeButtonState();
}

class _DateTimeButtonState extends State<DateTimeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.dateTimeDetails.bottomPadding),
      child: InkWell(
        onTap: () {
          widget.onDateTimeSelected(widget.dateTimeDetails);
        },
        child: Column(
          children: [
            Container(
              width: widget.dateTimeDetails.width,
              decoration: BoxDecoration(
                gradient: widget.dateTimeDetails.isSelected == true
                    ? reservationBtnGradient
                    : reservationBtnGradientDefault,
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
                  top: widget.dateTimeDetails.cardTopPadding,
                  bottom: widget.dateTimeDetails.cardBottomPadding,
                ),
                child: Column(
                  children: [
                    //Day
                    Text(
                      widget.dateTimeDetails.day,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: textStyleLabel1.copyWith(
                        color: selectDayTextColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    //Date
                    Text(
                      widget.dateTimeDetails.date,
                      textAlign: TextAlign.center,
                      style: textStyleLabel1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: widget.dateTimeDetails.width,
              decoration: BoxDecoration(
                gradient: widget.dateTimeDetails.isSelected == true
                    ? reservationBtnGradient
                    : reservationBtnGradientDefault,
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
                  widget.dateTimeDetails.time,
                  textAlign: TextAlign.center,
                  style: textStyleLabel1.copyWith(
                    color: selectDayTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimeDetails {
  final String day;
  final String time;
  final String date;
  bool isSelected;
  final double width;
  final double cardTopPadding;
  final double cardBottomPadding;
  final double bottomPadding;

  DateTimeDetails(
      {required this.width,
      required this.cardTopPadding,
      required this.cardBottomPadding,
      required this.bottomPadding,
      required this.day,
      required this.time,
      required this.date,
      required this.isSelected});
}

List<DateTimeDetails> availableDates = [
  DateTimeDetails(
      day: 'Fri',
      time: '3:00',
      date: '5',
      isSelected: false,
      bottomPadding: 20,
      width: 55,
      cardBottomPadding: 16,
      cardTopPadding: 16),
  DateTimeDetails(
      day: 'Sat',
      time: '4:00',
      date: '6',
      isSelected: false,
      bottomPadding: 40,
      width: 55,
      cardBottomPadding: 16,
      cardTopPadding: 16),
  DateTimeDetails(
      day: 'Sun',
      time: '5:00',
      date: '7',
      isSelected: true,
      bottomPadding: 60,
      width: 65,
      cardBottomPadding: 26,
      cardTopPadding: 26),
  DateTimeDetails(
      day: 'Mon',
      time: '6:00',
      date: '8',
      isSelected: false,
      bottomPadding: 40,
      width: 55,
      cardBottomPadding: 16,
      cardTopPadding: 16),
  DateTimeDetails(
      day: 'Tue',
      time: '7:00',
      date: '9',
      isSelected: false,
      bottomPadding: 20,
      width: 55,
      cardBottomPadding: 16,
      cardTopPadding: 16),
];
