import 'package:flutter/material.dart';
import 'package:land_of_discover/Screens/wellcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Land of Discover',
      
      home: WellcomePage()
    );
  }
}
