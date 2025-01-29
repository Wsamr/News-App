import 'package:flutter/material.dart';

import '../models/Catogray_Model.dart';
import '../widgets/Catogray_card.dart';

class CatograyListView extends StatelessWidget {
  CatograyListView({super.key});
  List<CatograyModel> catograyL = [
    CatograyModel(image: 'assets/general.jpeg', CatograyName: 'General'),
    CatograyModel(image: 'assets/technology.jpeg', CatograyName: 'Technology'),
    CatograyModel(image: 'assets/business.jpeg', CatograyName: 'Business'),
    CatograyModel(
        image: 'assets/entertaiment.jpeg', CatograyName: 'Entertaiment'),
    CatograyModel(image: 'assets/health.jpeg', CatograyName: 'Health'),
    CatograyModel(image: 'assets/science.jpeg', CatograyName: 'Science'),
    CatograyModel(image: 'assets/sports.jpeg', CatograyName: 'Sports'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catograyL.length,
        itemBuilder: (context, index) {
          return CatograyCard(catogray: catograyL[index]);
        },
      ),
    );
  }
}
