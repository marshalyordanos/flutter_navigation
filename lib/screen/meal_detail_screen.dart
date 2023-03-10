import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigation_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  const MealDetailScreen({super.key});
  Widget bulidContainer(Widget child) {
    return Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: child);
  }

  Widget buildSectionTitle(String txt) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        txt,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final meal = DUMMY_MEALS.firstWhere((data) => data.id == id);
    print(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle("Ingredients"),
          bulidContainer(
            ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, i) {
                  return Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(meal.ingredients[i]),
                    ),
                  );
                }),
          ),
          buildSectionTitle("Steps"),
          bulidContainer(
            ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (ctx, i) {
                  return ListTile(
                    leading: CircleAvatar(child: Text('#${i + 1}')),
                    title: Text(meal.steps[i]),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
