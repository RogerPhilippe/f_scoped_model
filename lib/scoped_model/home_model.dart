import 'package:f_scoped_model/services/storage_service.dart';

import '../enums/view_state.dart';

import '../service_locator.dart';
import 'base_model.dart';

class HomeModel extends BaseModel {

  StorageService storageService = locator<StorageService>();

  String title =  "HomeModel" ;

  Future<bool> saveData() async {
    setState(ViewState.Busy);
    title = "Savind Data";
    await storageService.saveData();
    title = "Data Saved";
    setState(ViewState.Retrieved);

    return true;

  }


}