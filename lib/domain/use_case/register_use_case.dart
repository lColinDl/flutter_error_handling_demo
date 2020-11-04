import 'package:error_handling_demo/data/user_profile_repository.dart';
import 'package:error_handling_demo/domain/model/exceptions.dart';
import 'package:error_handling_demo/domain/model/user_profile.dart';

class RegisterUseCase {
  final UserProfileRepository repository;

  RegisterUseCase(this.repository);

  Future<UserProfile> execute(String userName, String password) async {
    return repository.register(userName, password);
  }
}

/// I don't care about the specifics:
/// - Can be @freezed
/// - Doesn't have to be all in one class,
///   can be split in multiple classes which extend/implement a base exception
///
/// If the exceptions are completely specific to a use case, specify it here.
/// But I also like the idea of having some global domain exceptions like e.g. NoInternetException.
/// Don't know if we need something like this in the MMS app, since we mostly only show a generic error message and no detailed error message
/// That's the reason, why we don't need to define those specific exceptions for 99% of our use cases
/// Mostly we don't care about the actual error. We only care about IF an error occurred and not what exactly happened.
/// So it would be overkill to define such an exception class for every use case.
class RegisterException implements LocalizedException {
  @override
  final String msgKey;

  RegisterException._(this.msgKey);

  factory RegisterException.passwordToShort() => RegisterException._('password_to_short');

  factory RegisterException.passwordInsecure() => RegisterException._('password_insecure');
}
