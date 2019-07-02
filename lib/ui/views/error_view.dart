import 'package:flutter/material.dart';
import '../../scoped_model/home_model.dart';
import 'base_view.dart';

class ErrorView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(child: Text(this.runtimeType.toString()))
      )
    );
  }

}
