import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hiremi_dashboard/widgets/new_navBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white
        )
      ),
      
      home: const Center(
        child: NewNavbar(isV: false,),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

