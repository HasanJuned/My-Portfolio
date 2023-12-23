import 'package:flutter/material.dart';

import '../colors/app_assets.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation> with TickerProviderStateMixin{

  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3))
      ..repeat(reverse: true);
    _animation = Tween(begin: Offset(0, 0.1), end: Offset(0, 0.2)).animate(_controller);

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();

  }




  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,
      child: Image.asset(AppAssets.profilePic, height: 300, width: 330,)
      ,
    );
  }
}
