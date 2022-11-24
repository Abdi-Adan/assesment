import 'package:flutter/material.dart';

class TrailingIconWidget extends StatelessWidget {
  final Widget trailingIcon;

  const TrailingIconWidget({super.key, required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: trailingIcon,
    );
  }
}
