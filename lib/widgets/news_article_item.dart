import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsArticleItem extends StatelessWidget {
  const NewsArticleItem({
    super.key, required this.articleModel
  });
  final ArticleModel articleModel;


  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image !=null?Image.network(articleModel.image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,):const CircularProgressIndicator()
    ),

        SizedBox(
          height: 12,
            child: Text(articleModel.title,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,)
        ),
         SizedBox(
          child: Text(articleModel.subTitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14
            ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,),
        )
      ],
    );

  }
  }
