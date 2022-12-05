import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/time_provider.dart';

class TimeExample extends StatefulWidget {
  const TimeExample({super.key});

  @override
  State<TimeExample> createState() => _TimeExampleState();
}

class _TimeExampleState extends State<TimeExample> {
  @override
  void initState() {
    super.initState();
    final timeProvider = Provider.of<TimeProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      timeProvider.getTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    final timeProvider = Provider.of<TimeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('time example '),
      ),
      body: Center(
          child: Consumer<TimeProvider>(builder: ((context, value, child) {
        return Text(
          value.hr.toString() +
              ": " +
              value.min.toString() +
              ":" +
              value.sec.toString() +
              " :" +
              value.milsec.toString(),
          style: TextStyle(fontSize: 20),
        );
      }))),
    );
  }
}
