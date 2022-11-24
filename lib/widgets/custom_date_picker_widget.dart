import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:spraxa_tech_assesment/utils/singletons.dart';

class CustomDatePickerWidget extends StatefulWidget {
  const CustomDatePickerWidget({super.key, required this.restorationId});

  final String? restorationId;

  @override
  State<CustomDatePickerWidget> createState() => _CustomDatePickerWidgetState();
}

class _CustomDatePickerWidgetState extends State<CustomDatePickerWidget>
    with RestorationMixin {
  String formattedNowDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  HoroscopeSelectedDate horoscopeSelectedDate = HoroscopeSelectedDate();
  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: DatePickerDialog(
            restorationId: 'date_picker_dialog',
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
            firstDate: DateTime(2021),
            lastDate: DateTime(2023),
          ),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  String _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        horoscopeSelectedDate.selectedDate
            .add(DateFormat('dd/MM/yyyy').format(newSelectedDate));
      });
    }

    return formattedNowDate;
  }

  @override
  String? get restorationId => widget.restorationId;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _restorableDatePickerRouteFuture.present();
      },
      child: Text(horoscopeSelectedDate.selectedDate.value),
    );
  }
}