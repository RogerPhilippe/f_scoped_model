import 'package:f_scoped_model/enums/view_state.dart';

import 'base_model.dart';

class SuccessModel extends BaseModel {

  String title = "no text yet";

  Future fetchDuplicatedText(String text) async {
    setState(ViewState.Busy);
    await Future.delayed(Duration(seconds: 2));
    title = '$text';
    setState(ViewState.Retrieved);
  }

}