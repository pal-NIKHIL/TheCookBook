import 'package:flutter/material.dart';
import './dummy_dart.dart';
import './model/meal.dart';
import './meal_detail_screen.dart';
import './taps.dart';
import '/category_meal_screen.dart';
import './filter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> availablemeal = DUMMY_MEALS;
  List<Meal> favoritemeal = [];
  Map<String, bool> filter = {
    'gluten': false,
    'vegan': false,
    'veg': false,
    'lactose': false
  };

  void setfilter(Map<String, bool> setfilter) {
    setState(() {
      filter = setfilter;
      availablemeal = DUMMY_MEALS.where((meal) {
        if (filter['gluten'] == true && !meal.isGlutenFree) {
          return false;
        }
        if (filter['vegan'] == true && !meal.isVegan) {
          return false;
        }
        if (filter['veg'] == true && !meal.isVegetarian) {
          return false;
        }
        if (filter['lactose'] == true && !meal.isLactoseFree) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void togglefavorite(String mealid) {
    final index = favoritemeal.indexWhere((meal) => mealid == meal.id);
    if (index >= 0) {
      setState(() {
        favoritemeal.removeAt(index);
      });
    } else {
      setState(() {
        favoritemeal
            .add(DUMMY_MEALS.firstWhere((element) => element.id == mealid));
      });
    }
  }
  bool ismealfav(String id){
    return favoritemeal.any((element) => element.id==id);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal_planner',
      theme: ThemeData(
        appBarTheme: AppBarTheme(),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: Color.fromRGBO(27, 36, 48, 1),
          primary: Color.fromRGBO(27, 36, 48, 1),
          secondary:Color.fromRGBO(27, 36, 48, 0.5),
        ),
      ),
      routes: {
        '/': (ctx) => Tapsscreen(favoritemeal),
        CategoryMealscreen.routename: (ctx) =>
            CategoryMealscreen(availablemeal),
        MealDetailscreen.routeName: (ctx) => MealDetailscreen(togglefavorite,ismealfav),
        Filterscreen.routeName: (ctx) => Filterscreen(filter, setfilter),
      },
    );
  }
}
