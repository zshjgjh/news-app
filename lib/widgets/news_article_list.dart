import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_article_item.dart';

import '../models/article_model.dart';

class NewsArticleList extends StatelessWidget{
  final List<ArticleModel> articles;
  const NewsArticleList({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate:SliverChildBuilderDelegate(childCount: articles.length,
                (context,index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 22.0),
                child: NewsArticleItem(articleModel:articles[index]),
              );
            }) );
  }
}
