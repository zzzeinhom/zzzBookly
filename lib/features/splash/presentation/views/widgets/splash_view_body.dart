import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zzzbookly/consts/data.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsData.splash),
        Text(
          "Keep reading,",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text("You 'll fall in love",
            style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          "A library of bite-size bussiness eBooks on soft skills",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          "and personal development by industy-leading",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          "experts through just one subscription",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        FloatingActionButton(
            onPressed: () {},
            shape: const StadiumBorder(),
            child: const Icon(Icons.arrow_forward_rounded)),
      ],
    );
  }
}
