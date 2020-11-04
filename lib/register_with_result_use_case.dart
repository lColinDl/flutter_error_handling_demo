import 'package:error_handling_demo/user_profile.dart';
import 'package:error_handling_demo/user_profile_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_with_result_use_case.freezed.dart';

class RegisterWithResultUseCase {
  final UserProfileRepository repository;

  RegisterWithResultUseCase(this.repository);

  Future<RegisterResult> execute(String userName, String password) async {
    return repository.registerWithResult(userName, password);
  }
}

@freezed
abstract class RegisterResult with _$RegisterResult {
  factory RegisterResult.success({@required UserProfile profile}) = _RegisterResultSuccess;

  factory RegisterResult.passwordToShort() = _RegisterResultPasswordToShort;

  factory RegisterResult.passwordInsecure() = _RegisterResultPasswordInsecure;

  factory RegisterResult.someOtherError({@required dynamic error}) = _RegisterResultSomeOtherError;
}
