import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     color: Colors.grey.shade100,

      title: 'Tabunganku',
      theme: ThemeData(
       useMaterial3: true,
       colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF7C3AED),
        brightness: Brightness.light,
       ),
       textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyNavigationBar(),
    );
  }
}
