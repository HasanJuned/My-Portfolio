import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/colors/app_colors.dart';

import 'colors/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      child: Column(
        children: [
          FadeInDown(
              duration: Duration(milliseconds: 1400),
              child: RichText(
                text: TextSpan(
                    text: 'My',
                    style: AppTextStyles.headingStyles(
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                          text: ' Services',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30, color: AppColors.robinEdgeblue))
                    ]),
              )),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover = value;
                      });
                    },
                    child: BuildAnimatedContainer(
                      isHover: isHover,
                    ),
                ),
                SizedBox(
                  width: 18,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                    isHover: isHover,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                    isHover: isHover,
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildAnimatedContainer extends StatelessWidget {
  const BuildAnimatedContainer({
    super.key,
    required this.isHover,
  });

  final bool isHover;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 600,
      ),
      width: isHover ? 370 : 350,
      //height: 450,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
          color: AppColors.bgColor2,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5))
          ]),
      child: Column(
        children: [
          Icon(
            Icons.mobile_friendly_sharp,
            size: 100,
            color: AppColors.themeColor,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Mobile Application Development',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '''To excel as a Flutter developer, I aim to leverage my expertise in Flutter, Rest API integration, and Firebase for proficient app development.''',
            style: AppTextStyles.montserratStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
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
                  onPressed: () {},
                  child: Text(
                    'Read More',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
