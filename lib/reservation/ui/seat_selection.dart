import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/appbar/app_bar.dart';
import 'package:movie_ticket_app/common/extensions/seat_extensions.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/common/resource/paths.dart';
import 'package:movie_ticket_app/common/resource/text_styles.dart';
import 'package:movie_ticket_app/reservation/modal/seat.dart';

class SeatSelectionScreen extends StatelessWidget {
  const SeatSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: DefaultAppBar(
          appBarTitle: 'Choose seats',
          appBarOptionBtnColor: seatSelectionScreenBtnColor,
          appBarBackBtnColor: seatSelectionScreenBtnColor,
          appBarOptionIcon: Icon(
            Icons.calendar_month,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: seatSelectionScreenBgColor,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: Image.asset('$imagesPath/movie_screen.png')),
              const _SeatsSelection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SeatsSelection extends StatelessWidget {
  const _SeatsSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 38,
            top: 48,
            right: 38,
          ),
          child: _SeatRows(
            leftSeats: silverSeatsA,
            rightSeats: silverSeatsB,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: _SeatRows(
            leftSeats: silverSeatsC,
            rightSeats: silverSeatsD,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        _SeatRow(seats: goldSeatsA),
        _SeatRow(seats: platinumSeatsA),
        _SeatRow(seats: platinumSeatsB),
        _SeatRow(seats: platinumSeatsC),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SeatSelectionTypeIndicator(
              iconColor: Colors.white,
              indicatorText: 'Available',
            ),
            SeatSelectionTypeIndicator(
              iconColor: alreadySelectedSeatColor,
              indicatorText: 'Reserved',
            ),
            SeatSelectionTypeIndicator(
              iconColor: selectedSeatColor,
              indicatorText: 'Selected',
            ),
          ],
        ),
      ],
    );
  }
}

class SeatSelectionTypeIndicator extends StatelessWidget {
  final Color iconColor;
  final String indicatorText;

  const SeatSelectionTypeIndicator(
      {Key? key, required this.iconColor, required this.indicatorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          color: iconColor,
          size: 8,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          indicatorText,
          style: textStyleBtnLabel1,
        ),
      ],
    );
  }
}

class _SeatRow extends StatefulWidget {
  final List<Seat> seats;

  const _SeatRow({Key? key, required this.seats}) : super(key: key);

  @override
  State<_SeatRow> createState() => _SeatRowState();
}

class _SeatRowState extends State<_SeatRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.seats
          .map((seat) => Padding(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                  top: 20,
                  bottom: 10,
                ),
                child: InkWell(
                  onTap: () {
                    if (seat.isAlreadySelected == false) {
                      setState(() {
                        seat.isSelected = !seat.isSelected;
                      });
                    }
                  },
                  child: SizedBox(
                    width: 28,
                    height: 22,
                    child: Image.asset(
                      '$imagesPath/seat.png',
                      color: seat.getSeatColor(),
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class _SeatRows extends StatelessWidget {
  final List<Seat> leftSeats;
  final List<Seat> rightSeats;

  const _SeatRows({
    Key? key,
    required this.leftSeats,
    required this.rightSeats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SeatRow(seats: leftSeats),
        const Spacer(),
        _SeatRow(seats: rightSeats),
      ],
    );
  }
}
