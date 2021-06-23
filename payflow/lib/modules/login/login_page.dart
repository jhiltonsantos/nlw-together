import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_color.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * 0.35,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: size.height * 0.07,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: size.height * 0.4,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.05,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70.0, vertical: 30.0),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titleHome,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
