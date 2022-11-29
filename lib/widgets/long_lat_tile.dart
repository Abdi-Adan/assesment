import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class LongLatWidget extends StatelessWidget {
  const LongLatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTileCustom(
      title: 'Lat/Long',
      subWidget: SizedBox(
        child: Text('28.704° N, 77.1025° E'),
      ),
      trailingWidget: TrailingIconWidget(trailingIcon: Icon(Icons.language)),
    );
  }
}
