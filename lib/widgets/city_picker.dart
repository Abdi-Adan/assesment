import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/utils/singletons.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class CityTile extends StatefulWidget {
  const CityTile({super.key});

  @override
  State<CityTile> createState() => _CityTileState();
}

class _CityTileState extends State<CityTile> {
  HoroscopeSelectedCity horoscopeSelectedCity = HoroscopeSelectedCity();

  @override
  Widget build(BuildContext context) {
    return ListTileCustom(
      title: 'Birth City',
      subWidget: SizedBox(
          child: InkWell(
        onTap: () {
          showCountryPicker(
            context: context,
            showPhoneCode: false,
            onSelect: (Country country) {
              setState(() {
                horoscopeSelectedCity.selectedCity.add(country.name);
              });
            },
          );
        },
        child: const Text('Select city'),
      )),
      trailingWidget:
          const TrailingIconWidget(trailingIcon: Icon(Icons.location_on)),
    );
  }
}
