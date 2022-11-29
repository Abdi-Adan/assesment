import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/utils/singletons.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class CountryTile extends StatefulWidget {
  const CountryTile({super.key});

  @override
  State<CountryTile> createState() => _CountryTileState();
}

class _CountryTileState extends State<CountryTile> {
  HoroscopeSelectedCountry horoscopeSelectedCountry =
      HoroscopeSelectedCountry();

  @override
  Widget build(BuildContext context) {
    return ListTileCustom(
      title: 'Birth Country',
      subWidget: SizedBox(
          child: InkWell(
        onTap: () {
          showCountryPicker(
            context: context,
            showPhoneCode: false,
            onSelect: (Country country) {
              setState(() {
                horoscopeSelectedCountry.selectedCountry.add(country.name);
              });
            },
          );
        },
        child: Text(horoscopeSelectedCountry.selectedCountry.value),
      )),
      trailingWidget:
          const TrailingIconWidget(trailingIcon: Icon(Icons.public)),
    );
  }
}
