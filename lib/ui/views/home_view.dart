import 'package:f_scoped_model/enums/view_state.dart';
import 'package:f_scoped_model/scoped_model/home_model.dart';
import 'package:f_scoped_model/ui/views/success_view.dart';
import 'package:f_scoped_model/ui/widgets/busy_overlay.dart';
import 'package:flutter/material.dart';

import 'base_view.dart';
import 'error_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => BusyOverlay(
          show: model.state == ViewState.Busy,
          child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () async {
                  var whereToNavigate = await model.saveData();
                  if (whereToNavigate) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            SuccessView(title: "Passed in from home")));
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ErrorView()));
                  }
                },
                child: Icon(Icons.save),
              )
          )
        )
    );
  }
}
