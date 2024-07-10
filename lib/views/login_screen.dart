import 'package:flutter/material.dart';
import 'package:login_screen/utils/global_colors.dart';
import 'package:login_screen/views/widgets/button_global.dart';
import 'package:login_screen/views/widgets/social_login.dart';
import 'package:login_screen/views/widgets/text_form_global.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Logo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: GlobalColors.mainColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                //// Email Input
                TextFormGlobal(
                  controller: emailController,
                  text: "Email",
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 6),
                //// Password Input
                TextFormGlobal(
                  controller: passwordController,
                  text: "Password",
                  obscure: true,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                const ButtonGlobal(),
                const SizedBox(height: 10),
                SocialLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
