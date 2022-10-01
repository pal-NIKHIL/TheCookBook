import 'package:flutter/material.dart';
import './maindrawer.dart';
import './favorites.dart';
import './categories_screen.dart';

class Tapsscreen extends StatefulWidget{
  @override
  State<Tapsscreen> createState() => _TapsscreenState();
}

class _TapsscreenState extends State<Tapsscreen> {
final List<Map<String,dynamic>> _pages=[
  {'pages':Categoriesscreen(),'title':'Categories'},
  {'pages':favoritesScreen(),'title':'Favorites Meal'}
  ];
int selectedindex=0;
void selectpage(index){
    setState(() {
    selectedindex=index;
  });
}
  Widget build(BuildContext context){
    return Scaffold(
      body: _pages[selectedindex]['pages'],
      appBar: AppBar(title: Text(_pages[selectedindex]['title']),),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedindex,
        onTap: selectpage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorites')
        ],
      ),
    );
  }
}