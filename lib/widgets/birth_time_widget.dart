import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/utils/singletons.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:spraxa_tech_assesment/widgets/custom_list_tile.dart';
import 'package:spraxa_tech_assesment/widgets/trailing_icon_widget.dart';

class BirthTimeWidget extends StatefulWidget {
  const BirthTimeWidget({super.key});

  @override
  State<BirthTimeWidget> createState() => _BirthTimeWidgetState();
}

class _BirthTimeWidgetState extends State<BirthTimeWidget> {
  final _timeC = TextEditingController();
  HoroscopeSelectedTime horoscopeSelectedTime = HoroscopeSelectedTime();
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    _timeC.text = '${DateFormat.Hms().format(DateTime.now())} ';
    super.initState();
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text =
            "${time.hour}:${time.minute} ${time.period.name.toUpperCase()}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTileCustom(
      title: 'Birth Time',
      subWidget: SizedBox(
        child: InkWell(
          onTap: () async {
            await displayTimePicker(context);
          },
          child: Text(
            _timeC.text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
      trailingWidget:
          const TrailingIconWidget(trailingIcon: Icon(Icons.timelapse_sharp)),
    );
  }
}