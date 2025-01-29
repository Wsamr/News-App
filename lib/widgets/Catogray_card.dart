import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:my_news_app/models/Catogray_Model.dart';

class CatograyCard extends StatelessWidget {
  CatograyCard({super.key, required this.catogray});
  CatograyModel catogray;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(catogray.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              catogray.CatograyName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
