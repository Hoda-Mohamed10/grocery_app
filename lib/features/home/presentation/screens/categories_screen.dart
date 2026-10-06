import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';
import 'package:store_app/core/widgets/custom_app_field.dart';
import 'package:store_app/features/home/presentation/screens/details_screen.dart';
import 'package:store_app/features/home/presentation/widgets/category_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<String> cateImage = [
    'assets/images/fruits.png',
    'assets/images/vegetables - Copy.png',
    'assets/images/meat.png',
    'assets/images/fish.png',
    'assets/images/sea food.png',
    'assets/images/juice.png',
    'assets/images/egg&milk.png',
    'assets/images/ice cream.png',
    'assets/images/cake.png',
    'assets/images/drink.png',
    'assets/images/hand wash.png',
    'assets/images/salmon.png',
  ];

  final List<String> cateName = [
    'Fruits',
    'Vegetables',
    'Meat',
    'Fish',
    'Sea Food',
    'Juice',
    'Egg & Milk',
    'Ice cream',
    'Cake',
    'Drink',
    'Hand Wash',
    'Salmon',
  ];

  final List<Color> bgColor = [
    AppColors.fruitBackground,
    AppColors.vegetableBackground,
    AppColors.meatBackground,
    AppColors.fishBackground,
    AppColors.seaFoodBackground,
    AppColors.juiceBackground,
    AppColors.eggMilkBackground,
    AppColors.iceCreamBackground,
    AppColors.cakeBackground,
    AppColors.drinkBackground,
    AppColors.handWashBackground,
    AppColors.vegetableBackground,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Categories',
          style: AppStyle.appBarTitle,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Padding(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              bottom: 16,
            ),
            child: CustomAppField(
              hint: 'Search',
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.hintBrown,
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(
          top: 16,
          left: 12,
          right: 12,
        ),
        itemCount: cateImage.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
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
            child: CategoryItem(
              cateImage: cateImage[index],
              cateName: cateName[index],
              bgColor: bgColor[index],
            ),
          );
        },
      ),
    );
  }
}