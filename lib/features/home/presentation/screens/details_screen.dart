import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class DetailsScreen extends StatefulWidget {
  final String image;
  final String nameFruit;
  final String? priceFruit;

  const DetailsScreen({
    super.key,
    required this.image,
    required this.nameFruit,
    this.priceFruit,
  });

  @override
  State<DetailsScreen> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsScreen> {
  int count = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.darkBrown,
        ),
        title: Text(
          '${widget.nameFruit} Details',
          style: AppStyle.detailsTitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                widget.image,
                height: 143,
                width: 208,
              ),
            ),
            SizedBox(height: 110),
            Text(
              widget.nameFruit,
              style: AppStyle.detailsTitle,
            ),
            if (widget.priceFruit != null) ...[
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    widget.priceFruit!,
                    style: AppStyle.detailsPrice,
                  ),
                  Text('/st',
                    style: AppStyle.detailsUnit,
                  ),
                ],
              ),
            ],
            SizedBox(height: 20),
            Text(
              'Golden Ripe Alphonsa mangoes delivered to your house in the most hygienic way ever... Best for eating plain but can also be made into shakes and cakes.',
              style: AppStyle.detailsDescription,
            ),
            SizedBox(height: 80),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: AppColors.quantityBackground,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              if (count > 1) {
                                setState(() {
                                  count--;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.remove,
                              color: AppColors.darkBrown,
                              size: 20,
                            ),
                          ),
                        ),
                        Text(
                          '$count',
                          style: AppStyle.quantityText,
                        ),
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              color: AppColors.darkBrown,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: Icon(
                    isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: AppColors.primary,
                    size: 32,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text('Add To cart',
                style: AppStyle.addToCartText,
              ),
            ),
          ],
        ),
      ),
    );}
}