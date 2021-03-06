import 'package:flutter/material.dart';
import 'package:meals/screens/favorities_screen.dart';
import 'categories_screen.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsScreen(this.favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  List<Map<String, Object>> _screen = [];

  void initState() {
    super.initState();
    _screen = [
      {'title': 'Lista de categorias', 'screen': CategoriesScreen()},
    {
      'title': 'Meus favoritos',
      'screen': FavoritiesScreen(widget.favoriteMeals)
    }
    ];
  }

  _seletedScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screen[_selectedScreenIndex]['title']),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: _screen[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _seletedScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categorias'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
        ],
      ),
    );
  }
}
