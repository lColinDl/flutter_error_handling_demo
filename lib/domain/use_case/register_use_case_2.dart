import 'package:error_handling_demo/data/user_profile_repository.dart';
import 'package:error_handling_demo/domain/model/user_profile.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_use_case_2.freezed.dart';

class RegisterUseCase2 {
  final UserProfileRepository repository;

  RegisterUseCase2(this.repository);

  Future<RegisterResult> execute(String userName, String password) async {
    return repository.register2(userName, password);
  }
}

@freezed
abstract class RegisterResult with _$RegisterResult {
  factory RegisterResult.success({@required UserProfile profile}) = _RegisterResultSuccess;

  factory RegisterResult.passwordToShort() = _RegisterResultPasswordToShort;

  factory RegisterResult.passwordInsecure() = _RegisterResultPasswordInsecure;

  factory RegisterResult.someOtherError({@required dynamic error}) = _RegisterResultSomeOtherError;
}
