import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/colors/app_assets.dart';

import 'colors/app_colors.dart';
import 'colors/app_text_styles.dart';
import 'my_services.dart';

class MyPortfolioScreen extends StatefulWidget {
  const MyPortfolioScreen({Key? key}) : super(key: key);

  @override
  State<MyPortfolioScreen> createState() => _MyPortfolioScreenState();
}

class _MyPortfolioScreenState extends State<MyPortfolioScreen> {
  List images = [
    AppAssets.github,
    AppAssets.github,
    AppAssets.github,
  ];

  var hoverIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: size.width * .1, vertical: 30),
      child: Column(
        children: [
          FadeInDown(
              duration: Duration(milliseconds: 1400),
              child: RichText(
                text: TextSpan(
                    text: 'Latest',
                    style: AppTextStyles.headingStyles(
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                          text: ' Projects',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30, color: AppColors.robinEdgeblue))
                    ]),
              )),
          SizedBox(
            height: 40,
          ),
          GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 200,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24),
              itemBuilder: (context, index) {
                var image = images[index];
                return FadeInUpBig(
                  duration: Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: (){},
                    onHover: (value){
                      setState(() {
                        if(value){
                          hoverIndex = index;

                        }
                      });
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(image),
                              fit: BoxFit.fill,
                            )),
                        Visibility(
                          visible: index == hoverIndex,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.limeAccent.withOpacity(1.0),
                                  Colors.limeAccent.withOpacity(0.9),
                                  Colors.limeAccent.withOpacity(0.8),
                                  Colors.limeAccent.withOpacity(0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'App Development',
                                  style: AppTextStyles.montserratStyle(
                                    color: Colors.black87,
                                    fontSize: 20
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Text(
                                  '''To excel as a Flutter developer, I aim to l growth but also contribute to the overall development of the business.''',
                                  style: AppTextStyles.normalStyles(color: Colors.black87),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
