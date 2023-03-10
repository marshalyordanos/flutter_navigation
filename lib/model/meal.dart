import 'package:flutter/material.dart';

enum Complexity { simple, challenging, hard }

enum Affordability { affordable, pricey, luxurios }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactosFree;
  final bool isVegan;
  final bool isVegeterian;
  const Meal(
      {required this.id,
      required this.categories,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl,
      required this.ingredients,
      required this.isGlutenFree,
      required this.isLactosFree,
      required this.isVegan,
      required this.isVegeterian,
      required this.steps,
      required this.title});
}
