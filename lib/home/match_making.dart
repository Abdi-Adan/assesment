import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/utils/global_utils.dart';
import 'package:spraxa_tech_assesment/widgets/horoscope_ctas.dart';
import 'package:spraxa_tech_assesment/widgets/horoscope_footer.dart';
import 'package:spraxa_tech_assesment/widgets/horoscope_tiles.dart';

class MatchMaking extends StatefulWidget {
  final SigninMethod signinMethod;

  const MatchMaking({super.key, required this.signinMethod});

  @override
  State<MatchMaking> createState() => _MatchMakingState();
}

class _MatchMakingState extends State<MatchMaking> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
            color: const Color(0xffea5200),
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            child: const Text('Partner 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        const HoroscopeTiles(),
        Container(
            color: const Color(0xffea5200),
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            child: const Text('Partner 2',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        const HoroscopeTiles(),
        GetHoroscopeCtas(
          signinMethod: widget.signinMethod,
          isMatch: true,
        ),
        const HoroscopeFooter(),
      ],
    ));
  }
}
