import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/custom_date_picker_widget.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class BirthDateTile extends StatelessWidget {
  const BirthDateTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTileCustom(
      title: 'Birth Date',
      subWidget: CustomDatePickerWidget(restorationId: 'HoroscopeId'),
      trailingWidget:
          TrailingIconWidget(trailingIcon: Icon(Icons.calendar_month)),
    );
  }
}
