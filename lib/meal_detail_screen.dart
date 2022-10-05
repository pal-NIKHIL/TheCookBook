import 'package:flutter/material.dart';
import './dummy_dart.dart';

import 'dummy_dart.dart';

class MealDetailscreen extends StatelessWidget{
  static const routeName='/meal-detail';
  final Function tooglefavorite,fav;
  MealDetailscreen(this.tooglefavorite,this.fav);
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
      appBar: AppBar(title: Text(selectedMeal.title,style: TextStyle(fontFamily: 'philosopher',fontSize: 28),),
      backgroundColor:Color.fromRGBO(27, 36, 48, 0.5),),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 300,
                child: Image.network(selectedMeal.imageUrl)
            ),Padding(padding:EdgeInsets.only(left: 35),child: Text("Ingredients",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'playfair',decoration: TextDecoration.underline,decorationColor: Colors.white,decorationThickness: 3,),)),
              buildcontainer(
                Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(itemBuilder: (ctx,index)=> Row(
                      children:[
                        Padding(padding:EdgeInsets.all(7),child: Icon(Icons.circle,color: Colors.red,size: 15,)),
                      Text(selectedMeal.ingredients[index],textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontFamily: 'ibm',fontSize: 18),),
                  ]),
                  itemCount: selectedMeal.ingredients.length,),
                ),
              ),
            Padding(padding:EdgeInsets.only(left:35),child: Text("Cooking",style: TextStyle(color: Colors.white,fontSize: 25,fontFamily: 'playfair',decoration: TextDecoration.underline,decorationColor: Colors.white,decorationThickness: 3),)),
            buildcontainer(
              Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(itemBuilder: (ctx,index)=>Column(
                  children: [ListTile(
                    leading: CircleAvatar(child: Text('#${index+1}'),),
                    title: Padding(padding:EdgeInsets.all(5),child: Text(selectedMeal.steps[index],textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontFamily: 'ibm'),)),
                  ),Divider()],
                ),
                  itemCount: selectedMeal.steps.length,),
              ),
            ),
          ],
        ),
      ),
        floatingActionButton:FloatingActionButton(
          backgroundColor: Color.fromRGBO(224, 50, 14, 1.0),
        child:Icon(fav(mealid)?Icons.star:Icons.star_border),
    onPressed: (){
          tooglefavorite(mealid);
    }
    )
    );
  }
}