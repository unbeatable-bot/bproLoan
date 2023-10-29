import 'package:bpro_loan_calculator/pages/calculator/calculate_area.dart';
import 'package:bpro_loan_calculator/pages/calculator/graph_area.dart';
import 'package:bpro_loan_calculator/pages/calculator/manual_area.dart';
import 'package:bpro_loan_calculator/pages/calculator/summary_area.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        '/detail': (context) => GraphArea(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  var borderBackGroundColor = Colors.black;
  var mainBackGroundColor = Color.fromARGB(255, 99, 94, 94);
  var subTitleColor = Colors.lightBlue;
  var textColor = Colors.white;
  var titleBold = FontWeight.w600;
  var subTitleBold = FontWeight.w300;

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          //padding: EdgeInsets.only(left: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            "Loan Calculator",
            style: TextStyle(
              fontSize: 25,
              fontWeight: titleBold,
            ),
          ),
        ),
        backgroundColor: borderBackGroundColor,
        toolbarHeight: 100,
      ),
      body: Row(
        children: [
          // 좌측 영역
          Expanded(
            flex: 1, // 1/6 비율
            child: Container(
              color: borderBackGroundColor,
              child: Center(
                child: Text(
                  '대출이자계산기',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: subTitleBold,
                  ),
                ),
              ),
            ),
          ),
          // 우측 영역
          Expanded(
            flex: 5, // 5/6 비율
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CalculateArea(backgroundColor: mainBackGroundColor, titleColor: subTitleColor, textColor: textColor),
                  SummaryArea(backgroundColor: mainBackGroundColor, titleColor: subTitleColor, textColor: textColor),
                  //회차, 상환금, 상환금액(지급금액), 이자, 납입원금 계, 잔금
                  Container(
                    color: mainBackGroundColor,
                    padding: EdgeInsets.only(
                        left: 50, right: 50, bottom: 30, top: 30),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Help",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: subTitleColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
