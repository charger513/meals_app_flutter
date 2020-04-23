import 'package:flutter/material.dart';
import 'package:meals_app_flutter/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem({this.title, this.color});

  void _selectCategory(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => CategoryMealsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(
          15), // Should match with the Border Radius of the Container child
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(
              15), // Should match with the Border Radius of the InkWell
        ),
      ),
    );
  }
}
