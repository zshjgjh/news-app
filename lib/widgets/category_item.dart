import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/category_view.dart';
import '../models/category_model.dart';



class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key, required this.categoryModel
  });

  final CategoryModel categoryModel;

  @override

  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return  CategoryView(category: categoryModel.categoryName,);
        }));
      },
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(image:AssetImage(categoryModel.image,),
              fit: BoxFit.fill
          ),
        ),

        child: Center(
          child: Text(categoryModel.categoryName,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
        ),
      ),
    );
  }
}