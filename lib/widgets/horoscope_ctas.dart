import 'package:flutter/material.dart';
import 'package:spraxa_tech_assesment/utils/global_utils.dart';
import 'package:spraxa_tech_assesment/utils/singletons.dart';

class GetHoroscopeCtas extends StatefulWidget {
  final SigninMethod signinMethod;
  final bool isMatch;

  const GetHoroscopeCtas(
      {super.key, required this.signinMethod, this.isMatch = false});

  @override
  State<GetHoroscopeCtas> createState() => _GetHoroscopeCtasState();
}

class _GetHoroscopeCtasState extends State<GetHoroscopeCtas> {
  HoroscopeSelectedDate horoscopeSelectedDate = HoroscopeSelectedDate();

  Future<void> _showAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Are you sure your Date of Birth is: \n ${horoscopeSelectedDate.selectedDate.value} ?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Continue'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showLoginAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('User needs to Login to post question.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Login'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlertDialog();
              },
              child: Text(widget.isMatch ? 'Match' : 'Get Horoscope'),
            ),
            ElevatedButton(
              onPressed: () {
                if (widget.signinMethod.name == 'anonymous') {
                  _showLoginAlertDialog();
                } else {
                  _showAlertDialog();
                }
              },
              child: const Text('Post your question'),
            ),
          ],
        ),
      ),
    );
  }
}
