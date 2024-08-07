
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.orange, // Explicitamente definindo a cor do AppBar
        ),
        textTheme:  GoogleFonts.pacificoTextTheme(),
      ),
      home: const LoginPage(),
    );
  }
}
