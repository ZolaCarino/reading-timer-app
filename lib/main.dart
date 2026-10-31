import 'package:flutter/material.dart';
import 'screens/home_timer_screen.dart';

void main() {
  runApp(const ReadingTimerApp());
}

class ReadingTimerApp extends StatelessWidget {
  const ReadingTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nạp Tri Thức',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.orangeAccent,
      ),
      home: const HomeTimerScreen(),
    );
  }
}
