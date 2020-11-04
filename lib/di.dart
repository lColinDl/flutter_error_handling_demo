import 'package:dio/dio.dart';
import 'package:error_handling_demo/data/home_info_repository.dart';
import 'package:error_handling_demo/data/user_profile_repository.dart';
import 'package:error_handling_demo/domain/use_case/get_home_info_use_case.dart';
import 'package:error_handling_demo/domain/use_case/get_home_info_use_case_2.dart';
import 'package:error_handling_demo/domain/use_case/register_use_case.dart';
import 'package:error_handling_demo/ui/home/home_page_view_model.dart';
import 'package:error_handling_demo/ui/home/home_page_view_model_2.dart';
import 'package:get_it/get_it.dart';

class DI {
  DI._();

  static T get<T>({String instanceName}) => GetIt.instance.get(
        instanceName: instanceName,
      );

  static Future<void> setup() => GetIt.instance.setup();
}

extension _Initializer on GetIt {
  Future<void> setup() async {
    registerLazySingleton(() => Dio());
    registerFactory(() => HomeInfoMapper());
    registerFactory(() => UserProfileMapper());
    registerLazySingleton(() => HomeInfoRepository(get(), get()));
    registerLazySingleton(() => UserProfileRepository(get(), get()));
    registerFactory(() => GetHomeInfoUseCase(get()));
    registerFactory(() => GetHomeInfoUseCase2(get()));
    registerFactory(() => RegisterUseCase(get()));
    registerFactory(() => HomePageViewModel(get(), get()));
    registerFactory(() => HomePageViewModel2(get(), get()));
  }
}
