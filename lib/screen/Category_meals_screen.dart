import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigation_app/components/meal_item.dart';
import 'package:navigation_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/categories";
  // final String id;
  // final String title;
  // const CategoryMealsScreen(this.id, this.title);
  const CategoryMealsScreen();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final catMeal =
        DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
    print(id);
    return Scaffold(
      appBar: AppBar(
        title: Text("catTitle"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(meal: catMeal[index]);
        },
        itemCount: catMeal.length,
      ),
    );
  }
}
