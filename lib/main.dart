import 'package:flutter/material.dart';
import 'package:movie_ticket_app/reservation/date_time_selection_screen.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DateTimeSelectionScreen();
  }
}
