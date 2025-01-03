import 'package:dio/dio.dart';

import '../models/article_model.dart';


class NewsService {
  final Dio dio;
  NewsService(this.dio);


 Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=f1abfe87be6048058f188a317fd050f8&category=$category');
      Map<String,dynamic> jsonData= response.data;
      List<dynamic> articles=jsonData['results'] ;
      List<ArticleModel> articlesList =[];
      for(var article in articles){
        ArticleModel articleModel=ArticleModel(image: article['image_url'],
            title: article['title'],
            subTitle: article['description']);
        articlesList.add(articleModel);

      }
      return articlesList;
    } catch (e) {
      return [];
    }
}
}