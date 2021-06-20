import 'package:flutter/material.dart';
import 'package:meals/components/meals_item.dart';
import '../components/meals_item.dart';
import '../models/meal.dart';

class FavoritiesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoritiesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma Refeições como Favoritas!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
      });
    }
  }
}
