import 'package:flutter/material.dart';
import 'package:gasmy_food_app/views/my%20bottom%20navigator%20bar/mybottom_navigatorbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.grey[100],appBarTheme: AppBarTheme(backgroundColor:Colors.grey[100] )),
      home: MyBottomNavigatorBarScreen(),
    );
  }
}