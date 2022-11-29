// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

class HoroscopeSelectedDate {
  factory HoroscopeSelectedDate() {
    return _singleton;
  }

  HoroscopeSelectedDate._internal();
  final selectedDate = BehaviorSubject<String>.seeded(
      DateFormat('dd/MM/yyyy').format(DateTime.now()));

  static final HoroscopeSelectedDate _singleton =
      HoroscopeSelectedDate._internal();
}

class HoroscopeSelectedTime {
  factory HoroscopeSelectedTime() {
    return _singleton;
  }

  HoroscopeSelectedTime._internal();
  final selectedTime =
      BehaviorSubject<String>.seeded(DateFormat.Hms().format(DateTime.now()));

  static final HoroscopeSelectedTime _singleton =
      HoroscopeSelectedTime._internal();
}

class HoroscopeSelectedCountry {
  factory HoroscopeSelectedCountry() {
    return _singleton;
  }

  HoroscopeSelectedCountry._internal();
  final selectedCountry = BehaviorSubject<String>.seeded('Select country');

  static final HoroscopeSelectedCountry _singleton =
      HoroscopeSelectedCountry._internal();
}

class HoroscopeSelectedCity {
  factory HoroscopeSelectedCity() {
    return _singleton;
  }

  HoroscopeSelectedCity._internal();
  final selectedCity = BehaviorSubject<String>.seeded('Select city');

  static final HoroscopeSelectedCity _singleton =
      HoroscopeSelectedCity._internal();
}
