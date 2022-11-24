import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class LanguageDropDown extends StatefulWidget {
  const LanguageDropDown({super.key});

  @override
  State<LanguageDropDown> createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  // Initial Selected Value
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'Hindu',
  ];

  @override
  Widget build(BuildContext context) {
    return ListTileCustom(
      title: 'Language',
      subWidget: DropdownButton(items: items, onChanged: (Object? value) {  },),
      trailingWidget: TrailingIconWidget(trailingIcon: Icon(Icons.language)),
    );
  }
}

