import 'package:flutter/material.dart';
import './meal_item.dart';
import './model/meal.dart';
class CategoryMealscreen extends StatefulWidget {
  static const routename = '/category-Meal';
  final List<Meal> availablemeal;
  CategoryMealscreen(this.availablemeal);
  @override
  State<CategoryMealscreen> createState() => _CategoryMealscreenState();
}

class _CategoryMealscreenState extends State<CategoryMealscreen> {
  late String ?categorytitle;
  late List<Meal> displaymeal;
  var check=false;
  void initState(){
    super.initState();
  }
  @override
  void didChangeDependencies() {
    if(check==false) {
      // TODO: implement didChangeDependencies
      final routeargs =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      categorytitle = routeargs['title'];
      final categoryid = routeargs['id'];
      displaymeal = widget.availablemeal.where((meal) {
        return meal.categories.contains(categoryid);
      }).toList();
    }
    check=true;
    super.didChangeDependencies();
  }
  void removemeal(String mealid){
    setState(() {
      displaymeal.removeWhere((element) => element.id==mealid);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(27, 36, 48, 0.5),
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(27, 36, 48, 0.5),
        title: Text(categorytitle!,style: TextStyle(fontFamily: 'philosopher',fontSize: 25)),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Mealitem(
            id:displaymeal[index].id,
            title: displaymeal[index].title,
            complexity:  displaymeal[index].complexity,
            duration:  displaymeal[index].duration,
            imageUrl:  displaymeal[index].imageUrl,
            affordability:  displaymeal[index].affordability,
          );
        },
        itemCount:  displaymeal.length,
      ),
    );
  }
}
