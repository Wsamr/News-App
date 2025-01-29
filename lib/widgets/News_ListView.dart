import 'package:flutter/material.dart';
import 'package:my_news_app/models/News_Model.dart';
import 'package:my_news_app/services/News_services.dart';

import 'News_card.dart';

class NewsListView extends StatefulWidget {
  NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  List<NewsModel> articles = [];
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsCard(
            article: articles[index],
          );
        },
      ),
    );
  }
}
