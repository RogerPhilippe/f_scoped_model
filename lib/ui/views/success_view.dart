import 'package:f_scoped_model/enums/view_state.dart';
import 'package:f_scoped_model/scoped_model/success_model.dart';
import 'package:f_scoped_model/ui/widgets/busy_overlay.dart';
import 'package:flutter/material.dart';

import 'base_view.dart';

class SuccessView extends StatelessWidget {
  final String title;

  SuccessView({this.title});

  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel>(
      onModelReady: (model) => model.fetchDuplicatedText(title),
      builder: (context, child, model) => BusyOverlay(
        show: model.state == ViewState.Busy,
        child: Scaffold(
          body: Center(child: Text(model.title))
        )
      )
    );
  }

}
