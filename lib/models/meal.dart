import 'package:flutter/foundation.dart';

enum Complexity { Simple, Medium, Difficult }

enum Cost { Fair, Cheap, Expensive }

class Meal {
  final String id;
  final String title;
  final int duration;
  final String imageUrl;
  final bool isVegan;
  final bool isVegetarian;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final List<String> steps;
  final List<String> categories;
  final List<String> ingredients;
  final Complexity complexity;
  final Cost cost;

  const Meal(
      {@required this.id,
      @required this.title,
      @required this.duration,
      @required this.imageUrl,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.steps,
      @required this.categories,
      @required this.ingredients,
      @required this.complexity,
      @required this.cost});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simples';
      case Complexity.Medium:
        return 'Normal';
      case Complexity.Difficult:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.Cheap:
        return 'barato';
      case Cost.Fair:
        return 'Justo';
      case Cost.Expensive:
        return 'Caro';
      default:
        return 'Desconhecida';
    }
  }
}
