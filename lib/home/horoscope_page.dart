import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/utils/global_utils.dart';
import 'package:spraxa_tech_assesment/widgets/horoscope_ctas.dart';
import 'package:spraxa_tech_assesment/widgets/horoscope_footer.dart';
import 'package:spraxa_tech_assesment/widgets/horoscope_tiles.dart';

class Horoscope extends StatelessWidget {
  final SigninMethod signinMethod;

  const Horoscope({super.key, required this.signinMethod});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HoroscopeTiles(),
          GetHoroscopeCtas(
            signinMethod: signinMethod,
          ),
          const HoroscopeFooter(),
        ],
      ),
    );
  }
}
