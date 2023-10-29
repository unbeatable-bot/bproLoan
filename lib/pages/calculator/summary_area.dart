import 'package:flutter/material.dart';

class SummaryArea extends StatefulWidget {
  final Color backgroundColor;
  final Color titleColor;
  final Color textColor;

  const SummaryArea({
    super.key,
    required this.backgroundColor,
    required this.titleColor,
    required this.textColor,
  });

  @override
  State<SummaryArea> createState() => _SummaryAreaState();
}

class _SummaryAreaState extends State<SummaryArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 30, top: 30),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Summary",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: widget.titleColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      "월 납입금액",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$\100",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      "결제횟수",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$\100",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      "총결제금액(원금+이자)",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$\100",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      "원래대출금액",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$\100",
                      style: TextStyle(
                        fontSize: 15,
                        color: widget.textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}