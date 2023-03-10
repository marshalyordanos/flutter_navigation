import 'package:navigation_app/model/meal.dart';

import './model/category.dart';
import 'package:flutter/material.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'c1', title: "Italian", color: Colors.purple),
  Category(id: 'c2', title: "Italian", color: Colors.orange),
  Category(id: 'c3', title: "Italian", color: Colors.blue),
  Category(id: 'c4', title: "Italian", color: Colors.green),
  Category(
      id: 'c5', title: "Italian", color: Color.fromARGB(255, 145, 114, 15)),
  Category(id: 'c6', title: "Italian", color: Colors.red),
  Category(id: 'c3', title: "Italian", color: Colors.blue),
  Category(id: 'c4', title: "Italian", color: Colors.green),
];

const DUMMY_MEALS = [
  Meal(
      id: "m1",
      categories: ['c1', 'c2'],
      affordability: Affordability.affordable,
      complexity: Complexity.challenging,
      duration: 20,
      imageUrl:
          "https://resources.diariolibre.com/images/binrepository/shutterstock-643604302_14586422_20200818073951-focus-0-0-375-240.jpg",
      ingredients: [
        '2 tomatoes',
        '1 Onion',
        "ingredients",
        '2 tomatoes',
        '1 Onion',
        "ingredients",
        '2 tomatoes',
        '1 Onion',
        "ingredients"
      ],
      isGlutenFree: false,
      isLactosFree: false,
      isVegan: false,
      isVegeterian: true,
      steps: ["steps", "step2", "step 3"],
      title: "title"),
  Meal(
      id: "m2",
      categories: ['c1', 'c2'],
      affordability: Affordability.affordable,
      complexity: Complexity.challenging,
      duration: 10,
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-bucatinipasta-045-ls-1607552701.jpg",
      ingredients: ['2 tomatoes', '1 Onion', "ingredients"],
      isGlutenFree: false,
      isLactosFree: false,
      isVegan: false,
      isVegeterian: true,
      steps: ["steps", "step2", "step 3"],
      title: "Burger"),
  Meal(
      id: "m3",
      categories: ['c3', 'c2'],
      affordability: Affordability.affordable,
      complexity: Complexity.challenging,
      duration: 20,
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-bucatinipasta-045-ls-1607552701.jpg",
      ingredients: ['100 tomatoes', '1 Onion', "ingredients"],
      isGlutenFree: false,
      isLactosFree: false,
      isVegan: false,
      isVegeterian: true,
      steps: ["steps", "step2", "step 3"],
      title: "Pasta"),
];
