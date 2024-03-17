import 'package:flutter/material.dart';
import 'package:taskbatchfive/presentation/screen/authscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskMangemt',
      home: SplashScreen(),

      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 16),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none
            )
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
          ),

        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        )
      ),
    );
  }
}
