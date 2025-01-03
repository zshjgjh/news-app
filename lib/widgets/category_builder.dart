import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_item.dart';



class CategoryBuilder extends StatelessWidget {
   CategoryBuilder({super.key});


  final List<CategoryModel> categories=[
    const CategoryModel(image:'assets/business.avif',
        categoryName:'business' ),
    const CategoryModel(image:'assets/entertaiment.avif',
        categoryName:'entertainment' ),
    const CategoryModel(image:'assets/health.avif',
        categoryName:'health' ),
    const CategoryModel(image:'assets/science.avif',
        categoryName:'science' ),
    const CategoryModel(image:'assets/science.avif',
        categoryName:'sports' ),
    const CategoryModel(image:'assets/technology.jpeg',
        categoryName:'technology' ),
    const CategoryModel(image:'assets/general.avif',
        categoryName:'general' )
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CategoryItem(categoryModel: categories[index],),
            );
            },
        ),
      ),
    );
  }
}

