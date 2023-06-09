import 'package:flutter/material.dart';

import '../landing/landing_screen.dart';

class MovieFlow extends StatefulWidget {
  const MovieFlow({Key? key}) : super(key: key);

  @override
  State<MovieFlow> createState() => _MovieFlowState();
}

class _MovieFlowState extends State<MovieFlow> {
  final pageController = PageController();

  void nextPage(){
    pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeOutCubic);
  }
  void previousPage(){
    pageController.previousPage(duration: const Duration(milliseconds: 600), curve: Curves.easeOutCubic);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
    //  physics: const NeverScrollableScrollPhysics(),
      children: [
        Landing(nextPage: nextPage, previousPage: previousPage),
        Scaffold(body: Container(color: Colors.red,),),
        Scaffold(body: Container(color: Colors.yellow,),),
        Scaffold(body: Container(color: Colors.green,),),
        Scaffold(body: Container(color: Colors.pink,),),
      ],
    );
  }
}
