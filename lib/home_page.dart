import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/about_me.dart';
import 'package:my_portfolio/colors/app_assets.dart';
import 'package:my_portfolio/colors/app_colors.dart';
import 'package:my_portfolio/colors/app_text_styles.dart';
import 'package:my_portfolio/colors/constants.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/my_portfolio.dart';
import 'package:my_portfolio/my_services.dart';
import 'package:my_portfolio/wisgets/profile_animation.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 2,
        toolbarHeight: 90,
        titleSpacing: 100,
        title: Row(
          children: [
            Text(
              'Portfolio',
              style: AppTextStyles.headerTextStyle(),
            ),
            const Spacer(),
            const Text('Home'),
            const SizedBox(
              width: 30,
            ),
            const Text('About'),
            const SizedBox(
              width: 30,
            ),
            const Text('Services'),
            const SizedBox(
              width: 30,
            ),
            const Text('Portfolio'),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            left: size.height * 0.2,
            right: size.height * 0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: Duration(milliseconds: 1200),
                      child: Text(
                        'Hello, It\'s Me',
                        style: AppTextStyles.montserratStyle(color: Colors.white),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInRight(
                      duration: Duration(milliseconds: 1400),

                      child: Text(
                        'Hasan Ahmed',
                        style: AppTextStyles.headingStyles(),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInLeft(
                      duration: Duration(milliseconds: 1400),

                      child: Row(
                        children: [
                          Text(
                            'And I\'m a ',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white),
                          ),
                          AnimatedTextKit(
                              pause: Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              animatedTexts: [
                                TyperAnimatedText('Flutter Developer',
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: Colors.lightBlue),
                                    speed: Duration(milliseconds: 40)),
                                TyperAnimatedText('Mobile Application Developer',
                                    textStyle: AppTextStyles.montserratStyle(
                                        color: Colors.lightBlue),
                                    speed: Duration(milliseconds: 40)),
                              ])
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    FadeInDown(
                      duration: Duration(milliseconds: 1600),

                      child: SizedBox(
                        width: size.width * .5,
                        child: Text(
                          '''To excel as a Flutter developer, I aim to leverage my expertise in Flutter, Rest API integration, and Firebase for proficient app development. My goal is to not only enhance my personal growth but also contribute to the overall development of the business.''',
                          style: AppTextStyles.normalStyles(),
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 22),
                    FadeInUp(
                      duration: Duration(milliseconds: 1600),

                      child: Row(
                        children: [
                          BuildSocialButton(
                            asset: AppAssets.facebook,
                          ),
                          Constants.sizedBox(width: 15),
                          BuildSocialButton(
                            asset: AppAssets.linkedin,
                          ),
                          Constants.sizedBox(width: 15),
                          BuildSocialButton(
                            asset: AppAssets.github,
                          ),
                        ],
                      ),
                    ),
                    Constants.sizedBox(height: 18),
                    FadeInUp(
                      duration: Duration(milliseconds: 1600),

                      child: SizedBox(
                        height: 55,
                        width: 130,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.themeColor,
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),

                            // height: 55,
                            // minWidth: 130,
                          ),
                          onPressed: (){},
                        child: Text('Download CV', style: TextStyle(color: Colors.white),)),
                      ),
                    )
                  ],
                ),
                //SizedBox(width: 20,),
                ProfileAnimation()
              ],
            ),
            SizedBox(height: 200,),
            AboutMe(),
            MyServices(),
            MyPortfolioScreen(),
            SizedBox(height: 800,),


          ],
        ),
      ),
    );
  }
}

class BuildSocialButton extends StatelessWidget {
  final String asset;

  const BuildSocialButton({
    super.key,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            maxRadius: 25,
            backgroundColor: AppColors.themeColor,
            child: CircleAvatar(
              maxRadius: 40,
              //radius: 200,
              backgroundColor: AppColors.themeColor,
              backgroundImage: AssetImage(asset),
              //child: Image.asset(AppAssets.facebook, fit: BoxFit.contain,),
            ),
          ),
        ),
      ],
    );
  }
}
