import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/widgets/custom_app_button.dart';
import 'package:store_app/core/widgets/custom_app_field.dart';
import 'package:store_app/features/home/presentation/screens/home_nav.dart';
import 'package:store_app/core/constants/app_styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text('Sign Up',
          style: AppStyle.appBarTitle,
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/sign up.png',
              ),
              SizedBox(height: 12),
              Text('Please Enter your Information \nto Create an account.',
                style: AppStyle.description,
              ),
              SizedBox(height: 12),
              CustomAppField(
                hint: 'Email',
              ),
              SizedBox(height: 12),
              CustomAppField(
                hint: 'Password',
              ),
              SizedBox(height: 12),
              CustomAppField(
                hint: 'Confirm Password',
              ),
              SizedBox(height: 20),
              CustomAppButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomeNav(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
