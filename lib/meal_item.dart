import 'package:flutter/material.dart';
import 'package:meal_planner/meal_detail_screen.dart';
import './model/meal.dart';

class Mealitem extends StatelessWidget {
  final String title, imageUrl,id;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  Mealitem(
      {
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  String get complexitytext {
    if (complexity == Complexity.Simple)
      return 'simple';
    else if (complexity == Complexity.Challenging)
      return 'challenging';
    else if (complexity == Complexity.Hard)
      return 'hard';
    else
      return 'Medium';
  }

  String get affordabilitytext {
    if (affordability == Affordability.Affordable)
      return 'Affordable';
    else if (affordability == Affordability.costly)
      return 'costly';
    else if (affordability == Affordability.Luxurious)
      return 'LUX';
    else
      return 'Cheap';
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetailscreen.routeName,arguments: id).then((value) => {
      if(value!=null) {

      }
    });
  }

  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectMeal(context),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color.fromRGBO(27, 36, 48, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'philosopher'),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee,color: Colors.grey,size: 15,),
                      Text('$affordabilitytext | $complexitytext',style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Card(
                        color: Color.fromRGBO(214, 213, 168, 1.0),
                        child: Padding(padding:EdgeInsets.all(7),child: Text('$duration min',style: TextStyle(fontSize: 15),))),
                  )
                ],
              ),
              Image.network(imageUrl,height: 150,width: 130,fit: BoxFit.scaleDown,),

            ],
          ),
        ),
      ),
    );

  }
}
