import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.startIcon,
    required this.text,
    this.endIcon,
  });

  final IconData startIcon;
  final String text;
  final Widget? endIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        startIcon,
        color: AppColors.orderText,
        size: 30,
      ),
      title: Text(
        text,
        style: AppStyle.profileItemText,
      ),
      trailing: endIcon ??
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.orderText,
            size: 15,
          ),
    );
  }
}