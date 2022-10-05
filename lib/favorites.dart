import 'package:flutter/material.dart';
import './model/meal.dart';
import './meal_item.dart';
class favoritesScreen extends StatelessWidget{
  final List<Meal> favoritemeal;
  favoritesScreen(this.favoritemeal);
  Widget build(BuildContext context){
    if(favoritemeal.isEmpty){
      return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding:EdgeInsets.all(20),child: Center(child: Text("NO ITEMS IN FAVORITE MEALS",style: TextStyle(color: Colors.white,fontFamily: 'philosopher',fontSize: 22),))),
              Center(child: Text("save your favorite meal here",style: TextStyle(color: Colors.white,fontFamily: 'ibm',fontSize: 17),)),
              Image.asset("lib/images/favoriteicon.png",height: 200,alignment: Alignment.center,)
            ],
      );
    }
    else{
      return ListView.builder(
          itemBuilder: (ctx, index) {
            return Mealitem(
              id:favoritemeal[index].id,
              title: favoritemeal[index].title,
              complexity:  favoritemeal[index].complexity,
              duration:  favoritemeal[index].duration,
              imageUrl:  favoritemeal[index].imageUrl,
              affordability:  favoritemeal[index].affordability,
            );
          },
          itemCount:  favoritemeal.length,
      );
    }
  }
}