import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/gender_toggle.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class GenderTile extends StatelessWidget {
  const GenderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTileCustom(
      title: 'Gender',
      subWidget: GenderToggle(),
      trailingWidget: TrailingIconWidget(
        trailingIcon: Icon(Icons.transgender),
      ),
    );
  }
}