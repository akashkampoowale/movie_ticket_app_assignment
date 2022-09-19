
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';
import 'package:movie_ticket_app/reservation/modal/seat.dart';

extension SeatExtension on Seat{
  Color getSeatColor(){
    if(isAlreadySelected == false && isSelected == true){
      return selectedSeatColor;
    }else if(isAlreadySelected == false){
      return Colors.white;
    }
    return alreadySelectedSeatColor;

  }
}