import 'package:flutter/material.dart';
import 'package:state_management/provider/count_provider.dart';
import 'package:state_management/provider/time_provider.dart';
import 'package:state_management/screens/count_example.dart';
import 'package:provider/provider.dart';
import 'package:state_management/screens/time_example.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TimeProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimeExample(),
    ),
    );

    
  }
}
