import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';
import 'package:store_app/features/home/presentation/screens/details_screen.dart';
import 'package:store_app/features/home/presentation/widgets/category_item.dart';
import 'package:store_app/features/home/presentation/widgets/deals_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> cateName = [
    'Fruits',
    'Vegetables',
    'Meat',
    'Fish',
    'Egg&Milk'
  ];

  final List<String> cateImage = [
    'assets/images/fruits.png',
    'assets/images/vegetables - Copy.png',
    'assets/images/meat.png',
    'assets/images/fish.png',
    'assets/images/egg&milk.png'
  ];

  final List<Color> bgColor = [
    AppColors.fruitBackground,
    AppColors.vegetableBackground,
    AppColors.meatBackground,
    AppColors.fishBackground,
    AppColors.eggMilkBackground
  ];

  final List<String> dealImage = [
    'assets/images/apple.png',
    'assets/images/banana.png',
    'assets/images/Banana-kg-12 1.jpg',
    'assets/images/avocado.png'
  ];

  final List<String> dealTitle = [
    'Red Apple',
    'Original Banana',
    'Po banana',
    'Avocado'
  ];

  final List<String> dealCaption = [
    '1kg,Priceg',
    '1kg,Priceg',
    '1pcs,Priceg',
    '1pcs,Priceg'
  ];

  final List<String> dealPrice = [
    r'$4,99',
    r'$5,99',
    r'$4,99',
    r'$6,99s'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding( padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset( 'assets/images/complimentary-dish 1.png', ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',
                  style: AppStyle.sectionTitle,
                ),
                Text('See All',
                  style: AppStyle.seeAll,
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: cateName.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            image: cateImage[index],
                            nameFruit: cateName[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: CategoryItem(
                        cateImage: cateImage[index],
                        cateName: cateName[index],
                        bgColor: bgColor[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Deals',
                  style: AppStyle.sectionTitle,
                ),
                Text('See All',
                  style: AppStyle.seeAll,
                ),
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: dealPrice.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            image: dealImage[index],
                            nameFruit: dealTitle[index],
                            priceFruit: dealPrice[index],
                          ),
                        ),
                      );
                    },
                    child: DealsItem(
                      image: dealImage[index],
                      dealTitle: dealTitle[index],
                      dealCaption: dealCaption[index],
                      dealPrice: dealPrice[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}