import 'package:flutter/material.dart';
import 'package:navigation_app/components/meal_item.dart';
import 'package:navigation_app/screen/Category_meals_screen.dart';
import 'package:navigation_app/screen/categories_screen.dart';
import 'package:navigation_app/screen/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        // textTheme: ThemeData.light().textTheme.copyWith(
        //     bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        //     bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        //     titleMedium:
        //         TextStyle(fontSize: 24, fontFamily: "RobotoCondensed"))
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (cxt) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == CategoryMealsScreen.routeName) {
      //     print("88888888888888888888888888888888888888888888");
      //     final args = settings.arguments as Map<String, String>;
      //     return MaterialPageRoute(builder: (context) {
      //       return CategoryMealsScreen();
      //     });
      //   }
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
