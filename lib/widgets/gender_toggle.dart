import 'package:flutter/material.dart';

class GenderToggle extends StatefulWidget {
  const GenderToggle({
    Key? key,
  }) : super(key: key);

  @override
  State<GenderToggle> createState() => _GenderToggleState();
}

class _GenderToggleState extends State<GenderToggle> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: isSelected,
      borderRadius: BorderRadius.circular(50),
      fillColor: const Color(0xffea5200),
      selectedColor: Colors.white,
      textStyle: const TextStyle(color: Colors.black),
      constraints: const BoxConstraints(minWidth: 60, minHeight: 40),
      onPressed: (int newIndex) {
        setState(() {
          for (int index = 0; index < isSelected.length; index++) {
            if (index == newIndex) {
              isSelected[index] = true;
            } else {
              isSelected[index] = false;
            }
          }
        });
      },
      children: const [Text('Male'), Text('Female')],
    );
  }
}
