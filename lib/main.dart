import 'package:f_scoped_model/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'service_locator.dart';

void main() {
  // Setup locator
  setupLocator();
  runApp(_Main());
}

class _Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }

}