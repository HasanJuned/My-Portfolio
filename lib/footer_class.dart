import 'package:flutter/material.dart';
import 'package:my_portfolio/colors/app_colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor2,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.themeColor
          ),
          child: Icon(Icons.arrow_upward, size: 25, color: Colors.black,),

        ),
      ),
    );
  }
}
