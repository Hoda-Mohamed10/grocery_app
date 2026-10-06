import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';

abstract class AppStyle {
  static const TextStyle welcomeTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.textBrown,
  );

  static const TextStyle welcomeDescription = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textBrown,
  );

  static const TextStyle outlinedButtonText = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const TextStyle appBarTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const TextStyle description = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.darkBrown,
  );

  static const TextStyle seeAll = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle fieldHint = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.hintBrown,
  );

  static const TextStyle categoryName = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle detailsTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.darkBrown,
  );

  static const TextStyle detailsPrice = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle detailsUnit = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle detailsDescription = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle quantityText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle addToCartText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle dealTitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.darkBrown,
  );

  static const TextStyle dealCaption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.dealCaption,
  );

  static const TextStyle dealPrice = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static const TextStyle cartTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.darkBrown,
  );

  static const TextStyle cartQuantity = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.darkBrown,
  );

  static const TextStyle cartPrice = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle cartUnit = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBrown,
  );

  static const TextStyle tabLabel = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const TextStyle emptyOrders = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static const TextStyle orderNumber = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.orderText,
  );

  static const TextStyle orderStatus = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle orderDate = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.orderText,
  );

  static const TextStyle orderPrice = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.orderIcon,
  );

  static const TextStyle profileSectionTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const TextStyle profileItemText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.orderText,
  );

  static const TextStyle profileLanguage = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.orderText,
  );
}