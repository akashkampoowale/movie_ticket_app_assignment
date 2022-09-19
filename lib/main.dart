import 'package:flutter/material.dart';
import 'package:movie_ticket_app/reservation/ui/date_time_selection_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DateTimeSelectionScreen();
  }
}
