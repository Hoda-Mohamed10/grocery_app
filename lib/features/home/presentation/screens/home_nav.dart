import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/features/cart/presentation/screens/cart_screen.dart';
import 'package:store_app/features/home/presentation/screens/categories_screen.dart';
import 'package:store_app/features/home/presentation/screens/home_screen.dart';
import 'package:store_app/features/orders/presentation/screens/orders_screen.dart';
import 'package:store_app/features/profile/presentation/screens/profile_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({ super.key, });

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    OrdersScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.darkBrown,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
      ),
    );}
}