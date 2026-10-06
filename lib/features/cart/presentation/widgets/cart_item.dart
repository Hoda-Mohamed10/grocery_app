import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({ super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.unit,
    required this.count,
    this.showDeleteOption = false,
    this.onIncrement,
    this.onDecrement,
    this.onDelete
  });

  final String image;
  final String title;
  final String price;
  final String unit;
  final int count;
  final bool showDeleteOption;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    double deleteWidth = 65;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.cartBorder,
            width: 1,
          ),
        ),
      ),
      child: IntrinsicHeight(
        child: Stack(
          children: [
            if (showDeleteOption)
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                width: deleteWidth,
                child: GestureDetector(
                  onTap: onDelete,
                  child: Container(
                    color: AppColors.deleteBackground,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.delete_forever_rounded,
                      color: AppColors.white,
                      size: 26,
                    ),
                  ),
                ),
              ),
            Transform.translate(
              offset: Offset(
                showDeleteOption ? -deleteWidth : 0,
                0,
              ),
              child: Container(
                color: AppColors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppStyle.cartTitle,
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.cartQuantityBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: onDecrement,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: AppColors.darkBrown,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                  ),
                                  child: Text(
                                    '$count',
                                    style: AppStyle.cartQuantity,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: onIncrement,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: AppColors.darkBrown,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          price,
                          style: AppStyle.cartPrice,
                        ),
                        SizedBox(width: 3),
                        Text(
                          unit,
                          style: AppStyle.cartUnit,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}