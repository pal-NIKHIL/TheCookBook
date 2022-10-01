import 'package:flutter/material.dart';
import './meal_detail_screen.dart';
import './taps.dart';
import '/category_meal_screen.dart';
import './filter_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal_planner',
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromRGBO(27, 36, 48, 0.5),
        appBarTheme: AppBarTheme(
          // backgroundColor: Color.fromRGBO(27, 36, 48, 0.5),
          // elevation: 0
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary:  Color.fromRGBO(60, 63, 65, 1.0),
    ),),
      routes: {
        '/':(ctx)=>Tapsscreen(),
        CategoryMealscreen.routename:(ctx)=>CategoryMealscreen(),
        MealDetailscreen.routeName:(ctx)=>MealDetailscreen(),
        Filterscreen.routeName:(ctx)=>Filterscreen(),
      },
    );
  }
}
