import 'package:flutter/material.dart';
import 'package:study_18_10_22/components/primary_button.dart';
import 'package:study_18_10_22/screens(welcome)/constants.dart';
import 'package:study_18_10_22/screens(welcome)/chats/chats_screen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                 MediaQuery.of(context).platformBrightness ==Brightness.light
                     ? 'assets/images/Logo_light.png'
                     : 'assets/images/Logo_dark.png',
              height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Sing In',
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatsScreen(),
                    ),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: 'Sing Up',
                press: () {},
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
