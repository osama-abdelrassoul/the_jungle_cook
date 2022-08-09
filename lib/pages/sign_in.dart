import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/pages/pages.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    double avatarRadius = screenSize.height * 0.1;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomBackButton(),
              Hero(
                tag: 'logo',
                child: CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: Colors.white,
                  child: Image.asset(kLogo),
                ),
              ),
              SignInForm(screenSize: screenSize),
              const SizedBox(height: 10),
              CustomButton(
                title: 'Sign In',
                isPrimaryButton: true,
                onPressed: () {},
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'click here',
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
