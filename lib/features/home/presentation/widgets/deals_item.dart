import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class DealsItem extends StatelessWidget {
  const DealsItem({
    super.key,
    required this.image,
    required this.dealTitle,
    required this.dealCaption,
    required this.dealPrice,
  });

  final String image;
  final String dealTitle;
  final String dealCaption;
  final String dealPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 13),
          Text(
            dealTitle,
            style: AppStyle.dealTitle,
          ),
          Text(
            dealCaption,
            style: AppStyle.dealCaption,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dealPrice,
                style: AppStyle.dealPrice,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppColors.dealAddButton,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}