import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final String title;
  final Widget subWidget;
  final Widget trailingWidget;

  const ListTileCustom(
      {super.key,
      required this.title,
      required this.subWidget,
      required this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(title),
          ),
          Row(
            children: [
              SizedBox(
                width: 170,
                child: subWidget,
              ),
              trailingWidget
            ],
          )
        ],
      ),
    );
  }
}
