import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/custom_textfield.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class NameTile extends StatelessWidget {
  const NameTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTileCustom(
      title: 'Name',
      subWidget: TextFieldCustom(),
      trailingWidget: TrailingIconWidget(trailingIcon: Icon(Icons.person)),
    );
  }
}