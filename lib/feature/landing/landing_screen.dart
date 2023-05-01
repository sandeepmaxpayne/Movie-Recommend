import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/widget/primay_button.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key, required this.nextPage, required this.previousPage})
      : super(key: key);

  final VoidCallback nextPage;
  final VoidCallback previousPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'Let\'s find a movie',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Image.asset('images/undraw_horror_movie.png'),
          const Spacer(),
          PrimaryButton(onPress: nextPage, text: 'get started'),
          const SizedBox(
            height: kMediumSpacing,
          )
        ],
      ),
    );
  }
}
