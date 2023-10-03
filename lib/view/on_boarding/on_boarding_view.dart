import 'package:UTS_Kelompok5/common_widget/on_boarding_page.dart';
import 'package:flutter/material.dart';

import '../../common/extension.dart';

class OnBoadingView extends StatefulWidget {
  const OnBoadingView({super.key});

  @override
  State<OnBoadingView> createState() => _OnBoadingViewState();
}

class _OnBoadingViewState extends State<OnBoadingView> {
  PageController controller = PageController();

  List pageArr = [
    {
      "title":"Results, Not Promise",
      "subtitle":"We can help you determine your goals",
      "image":"assets/img/on_1.png"
    },
    {
      "title":"Get Burn",
      "subtitle":"Let's keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in",
      "image":"assets/img/on_1.png"
    },
    {
      "title":"Eat Well",
      "subtitle":"Let's start a healty lifestyle, we can determine your food every day, healthy eating is fun",
      "image":"assets/img/on_1.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.black,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return OnBoardingPage(pObj: pObj);

              }),


        ],
      ),
    );
  }
}
