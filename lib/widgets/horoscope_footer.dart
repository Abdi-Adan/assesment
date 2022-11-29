import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HoroscopeFooter extends StatelessWidget {
  const HoroscopeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            FaIcon(FontAwesomeIcons.twitter, color: Color(0xff029bec)),
            FaIcon(FontAwesomeIcons.facebook, color: Color(0xff0f6091)),
            FaIcon(FontAwesomeIcons.whatsapp, color: Color(0xff3ea241)),
            FaIcon(FontAwesomeIcons.envelope, color: Color(0xff333333)),
            FaIcon(FontAwesomeIcons.ellipsis, color: Color(0xff333333)),
          ],
        ),
      ),
    );
  }
}
