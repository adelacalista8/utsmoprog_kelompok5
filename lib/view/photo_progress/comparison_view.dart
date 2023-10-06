import 'package:UTS_Kelompok5/common_widget/icon_title_next_row.dart';
import 'package:UTS_Kelompok5/common_widget/round_button.dart';
import 'package:UTS_Kelompok5/view/photo_progress/result_view.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';

class ComparisonView extends StatefulWidget {
  const ComparisonView({super.key});

  @override
  State<ComparisonView> createState() => _ComparisonViewState();
}

class _ComparisonViewState extends State<ComparisonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: TColor.black,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Comparison",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: TColor.lightGray,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/img/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: TColor.lightGray,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/img/more_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: TColor.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            IconTitleNextRow(
                icon: "assets/img/date.png",
                title: "Select Month 1",
                time: "May",
                onPressed: () {},
                color: TColor.white.withOpacity(0.7)),
            const SizedBox(
              height: 15,
            ),
            IconTitleNextRow(
                icon: "assets/img/date.png",
                title: "Select Month 2",
                time: "select Month",
                onPressed: () {},
                color: TColor.white.withOpacity(0.7)),
            const Spacer(),
            // RoundButton(
            //     title: "Compare",
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         //blm bener
            //         // MaterialPageRoute(
            //         //   // builder: (context) => ResultView(
            //         //     date1: DateTime(2023, 5, 1),
            //         //     date2: DateTime(2023, 6, 1),
            //         //   ),
            //         ),
            //       );
            //     }),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
