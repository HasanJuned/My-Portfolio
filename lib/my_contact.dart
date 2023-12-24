import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'colors/app_colors.dart';
import 'colors/app_text_styles.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.bgColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: size.width * .2, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FadeInDown(
              duration: Duration(milliseconds: 1400),
              child: RichText(
                text: TextSpan(
                    text: 'Contact',
                    style: AppTextStyles.headingStyles(
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                          text: ' Me',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30, color: AppColors.robinEdgeblue))
                    ]),
              )),
          SizedBox(
            height: 40,
          ),

          Row(
            children: [
              Expanded(child: BuildInputDecoration(hintText: 'full name',)),
              SizedBox(width: 20,),
              Expanded(child: BuildInputDecoration(hintText: 'email address',)),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: BuildInputDecoration(hintText: 'mobile number',)),
              SizedBox(width: 20,),
              Expanded(child: BuildInputDecoration(hintText: 'email subject',)),

            ],
          ),
          SizedBox(height: 10,),
          BuildInputDecoration(hintText: 'your message',maxLine: 10,),
          SizedBox(height: 10,),
          FadeInUp(
            duration: Duration(milliseconds: 1600),

            child: SizedBox(
              height: 55,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.themeColor,
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),

                    // height: 55,
                    // minWidth: 130,
                  ),
                  onPressed: (){},
                  child: Text('Send Message', style: TextStyle(color: Colors.white),)),
            ),
          )



        ],
      ),
    );
  }
}

class BuildInputDecoration extends StatelessWidget {
  const BuildInputDecoration({
    super.key, required this.hintText, this.maxLine
  });

  final String hintText;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 8,
      color: Colors.transparent,
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.comfortaaStyle(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none
          ),
          filled: true,
          focusColor: AppColors.bgColor2,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12)
        ),
      ),
    );
  }
}
