import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/appbar/app_bar.dart';
import 'package:movie_ticket_app/common/custom_widgets/reservation_button.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/common/resource/gradients.dart';
import 'package:movie_ticket_app/common/resource/paths.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';
import 'package:movie_ticket_app/reservation/ui/date_time_button.dart';

class DateTimeSelectionScreen extends StatelessWidget {
  const DateTimeSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: DefaultAppBar(
          appBarOptionBtnColor: circularBtnColor2,
          appBarBackBtnColor: circularBtnColor1,
          appBarOptionIcon: Icon(Icons.keyboard_control),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('$imagesPath/doctor_strange_post.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: mainBgGradient,
          ),
          child: SafeArea(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 34),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Doctor Strange',
                      style: textStyleTitle1,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'in a multiverse of madness.',
                      style: textStyleTitle2,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse',
                      style: textStyleTitle2.copyWith(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Select date and time',
                      style: textStyleTitle1.copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 30),

                    //Select Date and time for reservation
                    const _ReservationDateTimeButtons(),

                    ReservationButton(
                      buttonText: 'Reservation',
                      onButtonTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ReservationDateTimeButtons extends StatelessWidget {
  const _ReservationDateTimeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        DateTimeButton(
          day: 'Fri',
          time: '3:00',
          date: '5',
        ),

        //Here is the new container

        DateTimeButton(
          day: 'Sat',
          time: '4:00',
          date: '6',
          bottomPadding: 40,
        ),

        //Her is new container

        DateTimeButton(
          day: 'Sun',
          time: '5:00',
          date: '7',
          bottomPadding: 60,
          width: 65,
          cardTopPadding: 26,
          cardBottomPadding: 26,
          dateTimePickerGradient: reservationBtnGradient,
        ),

        //here is new container

        DateTimeButton(
          day: 'Mon',
          time: '6:00',
          date: '8',
          bottomPadding: 40,
        ),

        //here is new container

        DateTimeButton(
          day: 'Tue',
          time: '7:00',
          date: '9',
        ),
      ],
    );
  }
}