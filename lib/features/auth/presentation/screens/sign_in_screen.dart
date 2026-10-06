import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/core/widgets/custom_app_button.dart';
import 'package:store_app/core/widgets/custom_app_field.dart';
import 'package:store_app/features/home/presentation/screens/home_nav.dart';
import 'package:store_app/core/constants/app_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text('Sign In',
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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/sign in.png',
              ),
              SizedBox(height: 25),
              Text('Enter your Email and \npassword to access your account',
                style: AppStyle.description,
              ),
              SizedBox(height: 18),
              const CustomAppField(
                hint: 'Email',
              ),
              SizedBox(height: 18),
              CustomAppField(
                hint: 'Password',
              ),
              SizedBox(height: 12),
              Text(
                'Forget Password?',
                textAlign: TextAlign.end,
                style: AppStyle.seeAll,
              ),
              SizedBox(height: 18),
              CustomAppButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomeNav(),
                    ),
                  );
                },
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t Have an account?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBrown,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}