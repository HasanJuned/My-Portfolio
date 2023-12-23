import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/colors/app_assets.dart';
import 'package:my_portfolio/colors/app_colors.dart';

import 'colors/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInRight(
              duration: Duration(milliseconds: 1200),
              child: Image.asset(AppAssets.profilePic, height: 400, width: 400,)),
          SizedBox(width: 25,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInRight(
                  duration: Duration(milliseconds: 1400),
                  child: RichText(
                    text: TextSpan(
                        text: 'About',
                        style: AppTextStyles.headingStyles(fontSize: 30,),
                      children: [
                        TextSpan(
                          text: ' Me',
                          style: AppTextStyles.headingStyles(fontSize: 30, color: AppColors.robinEdgeblue)
                        )
                      ]
                    ),
                  )
                ),
                SizedBox(height: 6,),
                FadeInLeft(
                    duration: Duration(milliseconds: 1400),
                    child: Text('Flutter Developer', style: AppTextStyles.montserratStyle(color: Colors.white),)),
                SizedBox(height: 8,),
                FadeInLeft(
                  duration: Duration(milliseconds: 1600),
                  child: Text(
                    '''To excel as a Flutter developer, I aim to leverage my expertise in Flutter, Rest API integration, and Firebase for proficient app development. My goal is to not only enhance my personal growth but also contribute to the overall development of the business.''',
                    style: AppTextStyles.normalStyles(),
                  ),
                ),
                SizedBox(height: 15,),
                FadeInUp(
                  duration: Duration(milliseconds: 1800),

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
                        child: Text('Read More', style: TextStyle(color: Colors.white),)),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
