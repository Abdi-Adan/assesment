import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/widgets/birth_date_tile.dart';
import 'package:spraxa_tech_assesment/widgets/birth_time_widget.dart';
import 'package:spraxa_tech_assesment/widgets/city_picker.dart';
import 'package:spraxa_tech_assesment/widgets/country_tile.dart';
import 'package:spraxa_tech_assesment/widgets/gender_tile.dart';
import 'package:spraxa_tech_assesment/widgets/language_dropdown.dart';
import 'package:spraxa_tech_assesment/widgets/long_lat_tile.dart';
import 'package:spraxa_tech_assesment/widgets/name_tile.dart';

class HoroscopeTiles extends StatelessWidget {
  const HoroscopeTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            color: Colors.white,
          ),
          const NameTile(),
          const Divider(thickness: 2),
          const GenderTile(),
          const Divider(thickness: 2),
          const BirthDateTile(),
          const Divider(thickness: 2),
          const BirthTimeWidget(),
          const Divider(thickness: 2),
          const CountryTile(),
          const Divider(thickness: 2),
          const CityTile(),
          const Divider(thickness: 2),
          const LongLatWidget(),
          const Divider(thickness: 2),
          const LanguageDropDown(),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}