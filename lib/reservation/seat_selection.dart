import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/appbar/app_bar.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/common/resource/paths.dart';
import 'package:movie_ticket_app/reservation/modal/seat.dart';

class SeatSelectionScreen extends StatelessWidget {
  const SeatSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: DefaultAppBar(appBarTitle: 'Choose seats',),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
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
          padding: const EdgeInsets.only(left: 38,top: 68,right: 38,bottom: 10),
          child: Row(
            children: [
              _SeatRow(seats: silverSeatsA),
              const Spacer(),
              _SeatRow(seats: silverSeatsB),
            ],
          ),
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
  String _getSeat(Seat seat){
      if(seat.isSelected == true){
        return '/reserved_seat.png';
      }
      return '/vacant_seat.png';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widget.seats.map((seat) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            if(seat.isAlreadySelected == false){
              setState(() {
                seat.isSelected = !seat.isSelected;
              });
            }

          },
          child: SizedBox(
                    width: 30,height: 20,
                    child: Image.asset('$imagesPath${_getSeat(seat)}'),
          ),
        ),
      )).toList(),
    );
  }
}




