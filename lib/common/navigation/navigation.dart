
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/reservation/ui/date_time_selection_screen.dart';
import 'package:movie_ticket_app/reservation/ui/seat_selection.dart';


navigation (route,context){
switch (route){
  case 'date_time_sel':
    navigate(const DateTimeSelectionScreen(), context);
    break;
  //
  case 'seat_selection':
    navigate(const SeatSelectionScreen(), context);
}
}


void navigate(route,context){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => route),
  );
}