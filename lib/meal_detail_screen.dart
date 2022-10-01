import 'package:flutter/material.dart';
import 'package:meal_planner/dummy_dart.dart';

class MealDetailscreen extends StatelessWidget{
  static const routeName='/meal-detail';
  Widget buildcontainer(Widget child){
    return Container(
      width: 300,
      height: 200,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: child
    )
    );
  }
  Widget build(BuildContext context){
    final mealid=ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal=DUMMY_MEALS.firstWhere((element) => element.id==mealid);
    return Scaffold(
     backgroundColor:Color.fromRGBO(27, 36, 48, 0.5),
      appBar: AppBar(title: Text(selectedMeal.title),
      backgroundColor:Color.fromRGBO(27, 36, 48, 0.5),),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 300,
                child: Image.network(selectedMeal.imageUrl)
            ),Text("Ingredients",textAlign: TextAlign.center),
              buildcontainer(
                ListView.builder(itemBuilder: (ctx,index)=>Card(
                  child: Padding(padding:EdgeInsets.all(5),child: Text(selectedMeal.ingredients[index],textAlign: TextAlign.center,)),
                ),
                itemCount: selectedMeal.ingredients.length,),
              ),
            buildcontainer(
              ListView.builder(itemBuilder: (ctx,index)=>Column(
                children: [ListTile(
                  leading: CircleAvatar(child: Text('#${index+1}'),),
                  title: Padding(padding:EdgeInsets.all(5),child: Text(selectedMeal.steps[index],textAlign: TextAlign.start,style: TextStyle(color: Colors.white),)),
                ),Divider()],
              ),
                itemCount: selectedMeal.steps.length,),
            ),
          ],
        ),
      ),
        floatingActionButton:FloatingActionButton(
        child:Icon(Icons.delete),
    onPressed: (){
          Navigator.of(context).pop(mealid);
    })
    );
  }
}