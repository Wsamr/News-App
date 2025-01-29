import 'package:flutter/material.dart';
import 'package:my_news_app/services/News_services.dart';
import 'package:my_news_app/views/HomePage.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
