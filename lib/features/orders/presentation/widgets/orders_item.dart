import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class OrdersItem extends StatelessWidget {
  const OrdersItem({
    super.key,
    required this.orderNumber,
    required this.status,
    required this.statusColor,
    required this.date,
    required this.price,
  });

  final String orderNumber;
  final String status;
  final Color statusColor;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.orderIcon,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.shopping_basket_outlined,
              color: AppColors.white,
              size: 24,
            ),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderNumber,
                  style: AppStyle.orderNumber,
                ),
                SizedBox(height: 4),
                Text(
                  status,
                  style: AppStyle.orderStatus.copyWith(
                    color: statusColor,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  date,
                  style: AppStyle.orderDate,
                ),
              ],
            ),
          ),
          Text(
            price,
            style: AppStyle.orderPrice,
          ),
        ],
      ),
    );
  }
}