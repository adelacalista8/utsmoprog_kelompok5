import 'package:UTS_Kelompok5/common_widget/meal_recommed_cell.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import 'package:UTS_Kelompok5/common_widget/meal_category_cell.dart';
import 'package:UTS_Kelompok5/common_widget/popular_meal_row.dart';
import 'food_info_details_view.dart';

class MealFoodDetailsView extends StatefulWidget {
  final Map eObj;
  const MealFoodDetailsView({super.key, required this.eObj});

  @override
  State<MealFoodDetailsView> createState() => _MealFoodDetailsViewState();
}

class _MealFoodDetailsViewState extends State<MealFoodDetailsView> {
  TextEditingController txtSearch = TextEditingController();

  List categoryArr = [
    {
      "name": "Drinks",
      "image": "assets/img/haus!.png",
    },
    {
      "name": "Sweets",
      "image": "assets/img/candy.png",
    },
    {
      "name": "Quinoa",
      "image": "assets/img/quinoa.png",
    },
    {
      "name": "Health",
      "image": "assets/img/burger.png",
    },
    {
      "name": "Salad",
      "image": "assets/img/fruity.png",
    },
    {
      "name": "Cake",
      "image": "assets/img/chocohealth.png",
    },
  ];

  List popularArr = [
    {
      "name": "Salmon Lunch",
      "image": "assets/img/salmon.png",
      "b_image":"assets/img/salmon.png",
      "size": "Easy",
      "time": "40mins",
      "kcal": "70kCal"
    },
    {
      "name": "Ketoprak",
      "image": "assets/img/ketoprak.png",
      "b_image": "assets/img/ketoprak.png",
      "size": "Medium",
      "time": "20mins",
      "kcal": "120kCal"
    },
    {
      "name": "Granola bar",
      "image": "assets/img/granolabar.png",
      "b_image": "assets/img/granolabar.png",
      "size": "Hard",
      "time": "20mins",
      "kcal": "120kCal"
    },
  ];

  List recommendArr = [
    {
      "name": "Avocado Rice",
      "image": "assets/img/avocado.png",
      "b_image":"assets/img/avocado.png",
      "size": "Hard",
      "time": "30mins",
      "kcal": "365kCal"
    },
    {
      "name": "Chicken Wrap",
      "image": "assets/img/wrapmini.png",
      "b_image":"assets/img/wrapmini.png",
      "size": "Easy",
      "time": "15mins",
      "kcal": "243kCal"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.secondaryColor10bright,
        centerTitle: true,
        elevation: 0,
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
                color: TColor.white,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/img/black_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          widget.eObj["name"].toString(),
          style: TextStyle(
              color: TColor.black, fontSize: 16, fontWeight: FontWeight.w700),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: TColor.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: txtSearch,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            prefixIcon: Image.asset(
                              "assets/img/search.png",
                              width: 25,
                              height: 25,
                            ),
                            hintText: "What Would You Like To Eat?"),
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 1,
                    height: 25,
                    color: TColor.gray.withOpacity(0.3),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/img/Filter.png",
                      width: 25,
                      height: 25,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose from selection",
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryArr.length,
                  itemBuilder: (context, index) {
                    var cObj = categoryArr[index] as Map? ?? {};
                    return MealCategoryCell(
                      cObj: cObj,
                      index: index,
                    );
                  }),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Recommendation\nfor Diet",
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: media.width * 0.6,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendArr.length,
                  itemBuilder: (context, index) {
                    var fObj = recommendArr[index] as Map? ?? {};
                    return MealRecommendCell(
                      fObj: fObj,
                      index: index,
                    );
                  }),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: popularArr.length,
                itemBuilder: (context, index) {
                  var fObj = popularArr[index] as Map? ?? {};
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodInfoDetailsView(
                            dObj: fObj,
                            mObj: widget.eObj,
                          ),
                        ),
                      );
                    },
                    child: PopularMealRow(
                      mObj: fObj,
                    ),
                  );
                }),
            SizedBox(
              height: media.width * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
