import 'package:flutter/material.dart';
import 'package:store_app/features/orders/presentation/widgets/orders_item.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          title: Text('Orders',
            style: AppStyle.appBarTitle,
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
            dividerHeight: 0.5,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(
                horizontal: 90,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              borderSide: BorderSide(
                width: 3,
                color: AppColors.primary,
              ),
            ),
            labelStyle: AppStyle.tabLabel,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('No ongoing orders',
                style: AppStyle.emptyOrders,
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              children: [
                OrdersItem(
                  orderNumber: 'Order #345',
                  status: 'Delivered',
                  statusColor: AppColors.delivered,
                  date: 'October 26, 2014',
                  price: r'$700',
                ),
                OrdersItem(
                  orderNumber: 'Order #346',
                  status: 'Cancelled',
                  statusColor: AppColors.cancelled,
                  date: 'October 14, 2016',
                  price: r'$452',
                ),
                OrdersItem(
                  orderNumber: 'Order #347',
                  status: 'Delivered',
                  statusColor: AppColors.delivered,
                  date: 'July 26, 2017',
                  price: r'$281',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}