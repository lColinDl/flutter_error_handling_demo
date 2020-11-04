import 'package:error_handling_demo/home_info.dart';
import 'package:error_handling_demo/home_info_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_home_info_result_use_case.freezed.dart';

class GetHomeInfoResultUseCase {
  final HomeInfoRepository repository;

  GetHomeInfoResultUseCase(this.repository);

  Future<HomeInfoResult> execute() async {
    final result = await repository.getHomeInfoAsResult();

    result.when(
      success: (info) {
        info.someExtraFieldManipulatedFromTheUseCase =
            'I have to check the success and unpack my HomeInfo object everytime I want to access it';
      },
      error: (e) {},
    );

    return result;
  }
}

@freezed
abstract class HomeInfoResult with _$HomeInfoResult {
  factory HomeInfoResult.success({@required HomeInfo data}) = _HomeInfoResultSuccess;

  factory HomeInfoResult.error({@required dynamic error}) = _HomeInfoResultError;
}
