import 'package:UTS_Kelompok5/common/extension.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.black,
      body: SingleChildScrollView(
        child : SafeArea(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hey there,",
              style: TextStyle(
                  color: TColor.gray,
                  fontSize: 18),
            ),

            Text("Create an Account",
              style: TextStyle(
                  color: TColor.white,
                  fontSize: 22,
                  fontWeight : FontWeight.w700),
            ),

            SizedBox(height: media.width * 0.05,),

            Container(
              decoration: BoxDecoration(color: TColor.lightgray, borderRadius: BorderRadius.circular(15) ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none
                ),
              ),
            ),
          ],
        ),
      )

      ),
    );
  }
}
