import 'package:dio/dio.dart';
import 'package:error_handling_demo/get_home_info_result_use_case.dart';
import 'package:error_handling_demo/get_home_info_use_case.dart';
import 'package:error_handling_demo/home_info_repository.dart';
import 'package:error_handling_demo/home_page.dart';
import 'package:error_handling_demo/register_use_case.dart';
import 'package:error_handling_demo/user_profile_repository.dart';
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
    registerFactory(() => GetHomeInfoResultUseCase(get()));
    registerFactory(() => RegisterUseCase(get()));
    registerFactory(() => HomePageViewModel(get(), get()));
    registerFactory(() => HomePageResultViewModel(get(), get()));
  }
}
