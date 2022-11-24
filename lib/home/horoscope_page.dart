import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/birth_date_tile.dart';
import 'package:spraxa_tech_assesment/widgets/birth_time_widget.dart';
import 'package:spraxa_tech_assesment/widgets/gender_tile.dart';
import 'package:spraxa_tech_assesment/widgets/language_dropdown.dart';
import 'package:spraxa_tech_assesment/widgets/name_tile.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 20),
        NameTile(),
        Divider(thickness: 2),
        GenderTile(),
        Divider(thickness: 2),
        BirthDateTile(),
        Divider(thickness: 2),
        BirthTimeWidget(),
        Divider(thickness: 2),
        // CountryTile(),
        // Divider(thickness: 2),
        // CityTile(),
        // Divider(thickness: 2),
        // LongLatWidget(),
        // Divider(thickness: 2),
        LanguageDropDown(),
        Divider(thickness: 2),
      ],
    );
  }
}

class LongLatWidget extends StatelessWidget {
  const LongLatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CityTile extends StatelessWidget {
  const CityTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
