// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculateArea extends StatefulWidget {
  final Color backgroundColor;
  final Color titleColor;
  final Color textColor;

  const CalculateArea({
    super.key,
    required this.backgroundColor,
    required this.titleColor,
    required this.textColor,
  });

  @override
  State<CalculateArea> createState() => _CalculateAreaState();
}

class _CalculateAreaState extends State<CalculateArea> {
  var loan_principal = 0;
  //The loan principal is the amount of money you borrow from a lender.
  var interest_rate = 0;
  var loan_term = 0;
  List<bool> _isSelected = [false, false, false]; // 초기 선택 상태
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      padding: EdgeInsets.only(top: 25, bottom: 25, left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                width: 400,
                child: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.refresh_rounded,
                      color: Colors.white,
                    )),
              ),
              Container(
                width: 400,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 15,
                    color: widget.textColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "대출원금",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: widget.textColor,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 15,
                    color: widget.textColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "대출금리",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: widget.textColor,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 15,
                    color: widget.textColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "대출기간",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: widget.textColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 400,
                child: ToggleButtons(
                  borderColor: Colors.white,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 130,
                      child: Text(
                        "원리금균등",
                        style: TextStyle(fontSize: 15, color: widget.textColor),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 130,
                      child: Text(
                        "원리균등",
                        style: TextStyle(fontSize: 15, color: widget.textColor),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 130,
                      child: Text(
                        "만기일시",
                        style: TextStyle(fontSize: 15, color: widget.textColor),
                      ),
                    ),
                  ],
                  isSelected: _isSelected,
                  color: Colors.grey, // 버튼의 기본 색상
                  selectedColor: Colors.blue, // 선택된 버튼의 색상

                  onPressed: (int index) {
                    setState(() {
                      _isSelected[index] = !_isSelected[index];
                    });
                  },
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => {debugPrint("계산버튼 클릭")},
                child: Text("calculate"),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(300, 50),
                    ), // Set the desired width and height
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.lightBlue)),
              ),
            ],
          ),
          Container(
            width: 300,
            padding: EdgeInsets.only(
              top: 50.0,
              bottom: 50.0,
            ),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: Column(
              children: [
                Text(
                  "월 납입 금액",
                  style: TextStyle(
                    fontSize: 30,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "\$\0",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "montly 원금",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "\$\0",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "montly 이자",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "\$\0",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "total intereset paid",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "\$\0",
                  style: TextStyle(
                    fontSize: 20,
                    color: widget.textColor,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => {Navigator.of(context).pushNamed('/detail')},
                  child: Text("회차별상세정보확인"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(120, 50),
                      ), // Set the desired width and height
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightBlue)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
