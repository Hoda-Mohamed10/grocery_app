import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.cateImage,
    required this.cateName,
    required this.bgColor,
  });

  final String cateImage;
  final String cateName;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: bgColor,
          child: Image.asset(cateImage),
        ),
        SizedBox(height: 12),
        Text(
          cateName,
          style: AppStyle.categoryName,
        ),
      ],
    );
  }
}