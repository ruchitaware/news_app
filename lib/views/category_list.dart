import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_tile.dart';


class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories;

  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
          itemCount: categories.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryTile(
              imageUrl: categories[index].imageUrl,
              categoryName: categories[index].categoryName,
            );
          }),
    );
  }
}
