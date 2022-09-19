import 'package:flutter/material.dart';
import 'package:movie_ticket_app/common/resource/colors.dart';

const circularBtnDecoration1 = BoxDecoration(
  color: circularBtnColor1,
  borderRadius: BorderRadius.all(Radius.circular(50)),
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      blurRadius: 2.0,
      spreadRadius: 0.1,
      offset: Offset(1.0, 1.0),
    )
  ],
);