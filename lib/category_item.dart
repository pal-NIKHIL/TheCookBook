import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './category_meal_screen.dart';
class Categoryitem extends StatelessWidget{
  final String id;
  final String title;
  final Image image;
  Categoryitem({ required this.id,required this.title,required this.image});
  void selectcategory(BuildContext context){
    Navigator.of(context).pushNamed(CategoryMealscreen.routename,arguments: {'id':id,'title':title});
  }
  Widget build(BuildContext context){
    return InkWell(
      onTap: ()=>selectcategory(context),
      child: Container(
        margin: EdgeInsets.only(right: 8),
        width: 110,
        child: Card(
          color: Color.fromRGBO(27, 36, 48, 1),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                image:image.image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}