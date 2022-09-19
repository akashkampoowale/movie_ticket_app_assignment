
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';

const mainBgGradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.center,
  stops: [0.75, 1],
  colors: [
    drStrangeBgColor,
    Colors.transparent,
  ],
);

const reservationBtnGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    reservationBtnGradient1Color,
    reservationBtnGradient2Color,
  ],
);

const reservationBtnGradientDefault = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    dateTimePickerColor,
    dateTimePickerColor,
  ],
);