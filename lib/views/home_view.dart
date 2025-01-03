import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_builder.dart';
import 'package:news_app_ui_setup/widgets/news_article_builder.dart';
import 'package:news_app_ui_setup/widgets/news_article_list.dart';
import 'package:news_app_ui_setup/widgets/news_article_item.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',
            style: TextStyle(
              fontSize: 16,
                fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            Text('Cloud',
              style: TextStyle(
                fontSize: 16,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryBuilder(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),),
            const newsArticleBuilder(category: 'general',)
          ],

        ),
      )
    );
  }
}


