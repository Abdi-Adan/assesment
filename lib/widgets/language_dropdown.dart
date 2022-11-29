import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class LanguageDropDown extends StatefulWidget {
  const LanguageDropDown({super.key});

  @override
  State<LanguageDropDown> createState() => _LanguageDropDownState();
}

class _LanguageDropDownState extends State<LanguageDropDown> {
  String dropdownvalue = 'English';
  var items = [
    'English',
    'Hindu',
  ];

  @override
  Widget build(BuildContext context) {
    return ListTileCustom(
      title: 'Language',
      subWidget: DropdownButton(
        alignment: AlignmentDirectional.centerEnd,
        underline: const SizedBox(),
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            dropdownvalue = value!;
          });
        },
      ),
      trailingWidget:
          const TrailingIconWidget(trailingIcon: Icon(Icons.g_translate)),
    );
  }
}
