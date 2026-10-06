import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/constants/app_styles.dart';
import 'package:store_app/features/profile/presentation/widgets/profile_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  bool switchDefaultValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text('Profile',
          style: AppStyle.appBarTitle,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        children: [
          ProfileItem(
            startIcon: Icons.person,
            text: 'Edit Profile',
          ),
          ProfileItem(
            startIcon: Icons.key_outlined,
            text: 'Change Password',
          ),
          ProfileItem(
            startIcon: Icons.credit_card,
            text: 'My Cards',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Text('App Settings',
              style: AppStyle.profileSectionTitle,
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            value: switchDefaultValue,
            onChanged: (value) {
              setState(() {
                switchDefaultValue = value;
              });
            },
            activeTrackColor: AppColors.primary,
            secondary: Icon(
              Icons.notifications,
              color: AppColors.orderText,
              size: 30,
            ),
            title: Text('Notification',
              style: AppStyle.profileItemText,
            ),
          ),
          ProfileItem(
            startIcon: Icons.language,
            text: 'Language',
            endIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('English',
                  style: AppStyle.profileLanguage,
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.orderText,
                  size: 15,
                ),
              ],
            ),
          ),
          ProfileItem(
            startIcon: Icons.logout,
            text: 'LogOut',
            endIcon: SizedBox(),
          ),
        ],
      ),
    );
  }
}