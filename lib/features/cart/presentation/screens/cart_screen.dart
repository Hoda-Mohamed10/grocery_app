import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';
import 'package:store_app/core/widgets/custom_app_button.dart';
import 'package:store_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:store_app/features/home//presentation/screens/details_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartState();
}

class _CartState extends State<CartScreen> {
  final List<String> cartImage = [
    'assets/images/red apple.png',
    'assets/images/original banana.png',
    'assets/images/avocado.png',
    'assets/images/salmon.png'
  ];

  final List<String> cartTitle = [
    'Red Apple',
    'Original Banana',
     'Avocado Bowl',
     'Salmon'
  ];

  final List<String> cartPrice = [
    r'$4,99',
    r'$5,99',
    r'$24',
    r'$50'
  ];

  final List<String> cartUnit = [
    'kg',
    'kg',
    'st',
    'kg'
  ];

  final List<int> cartCount = [
    2,
    2,
    1,
    2
  ];

  void _deleteItem(int index) {
    setState(() {
      cartImage.removeAt(index);
      cartTitle.removeAt(index);
      cartPrice.removeAt(index);
      cartUnit.removeAt(index);
      cartCount.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Cart',
          style: AppStyle.appBarTitle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartTitle.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: cartImage[index],
                          nameFruit: cartTitle[index],
                          priceFruit: cartPrice[index],
                        ),
                      ),
                    );
                  },
                  child: Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      color: AppColors.deleteBackground,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.delete_forever_rounded,
                        color: AppColors.white,
                        size: 26,
                      ),
                    ),
                    onDismissed: (direction) {
                      _deleteItem(index);
                    },
                    child: CartItem(
                      image: cartImage[index],
                      title: cartTitle[index],
                      price: cartPrice[index],
                      unit: cartUnit[index],
                      count: cartCount[index],
                      showDeleteOption: false,
                      onIncrement: () {
                        setState(() {
                          cartCount[index]++;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          if (cartCount[index] > 1) {
                            cartCount[index]--;
                          }
                        });
                      },
                      onDelete: () {
                        _deleteItem(index);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: SizedBox(
              width: double.infinity,
              child: CustomAppButton(
                text: 'CheckOut',
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}