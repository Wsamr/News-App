import 'package:flutter/material.dart';
import 'package:my_news_app/widgets/News_ListView.dart';

import '../widgets/Catogray_ListView.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: RichText(
            text: const TextSpan(
          text: 'News',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
          children: [
            TextSpan(
              text: 'Cloud',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 13,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CatograyListView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            NewsListView(),
          ],
        ),
      ),
    );
  }
}
