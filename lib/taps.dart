import 'package:flutter/material.dart';
import './maindrawer.dart';
import './favorites.dart';
import './categories_screen.dart';
import './model/meal.dart';

class Tapsscreen extends StatefulWidget{
  final List<Meal> favoritemeal;
  Tapsscreen(this.favoritemeal);
  @override
  State<Tapsscreen> createState() => _TapsscreenState();
}

class _TapsscreenState extends State<Tapsscreen> {
 late List<Map<String,dynamic>> _pages;
int selectedindex=0;
@override
  void initState() {
    // TODO: implement initState
  _pages=[
    {'pages':Categoriesscreen(),'title':'Categories'},
    {'pages':favoritesScreen(widget.favoritemeal),'title':'Favorites Meal'}
  ];
    super.initState();
  }
void selectpage(index){
    setState(() {
    selectedindex=index;
  });
}
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 36, 48, 0.5),
      body: _pages[selectedindex]['pages'],
      appBar: AppBar(title: Text(
        "Find best recipes  ",
        style: TextStyle(
          fontSize: 28,
          color: Colors.white,
          fontFamily: 'philosopher',
        ),
      ),
      backgroundColor: Color.fromRGBO(27, 36, 48, 0.5),
      elevation: 0,),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(241, 239, 165, 1),
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromRGBO(27, 36, 48, 0.5),
      currentIndex: selectedindex,
        onTap: selectpage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Categories',backgroundColor: Color.fromRGBO(27, 36, 48, 0.5)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorites',backgroundColor: Color.fromRGBO(27, 36, 48, 0.5))
        ],
      ),
    );
  }
}