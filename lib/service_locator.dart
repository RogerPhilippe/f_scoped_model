import 'package:f_scoped_model/scoped_model/home_model.dart';
import 'package:f_scoped_model/scoped_model/success_model.dart';
import 'package:f_scoped_model/services/storage_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator() {

  // Services
  locator.registerLazySingleton<StorageService>(() => StorageService());

  // Models
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<SuccessModel>(() => SuccessModel());

}