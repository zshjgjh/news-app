import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import '../services/news_service.dart';
import 'news_article_list.dart';




class newsArticleBuilder extends StatefulWidget {
  const newsArticleBuilder({super.key, required this.category});
  final String category;

  @override
  State<newsArticleBuilder> createState() => _newsArticleBuilderState();
}

class _newsArticleBuilderState extends State<newsArticleBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsService(Dio()).getNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:future,
        builder: (context,snapshot) {
      if (snapshot.hasData) {
        return NewsArticleList(articles:snapshot.data!);
      }
      else if (snapshot.hasError){
        return const SliverToBoxAdapter(child: Center(child: Text('Ooops there was an error')));
      }
      else{
          return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(strokeWidth: 3,)));
      }
        });
  }
}


