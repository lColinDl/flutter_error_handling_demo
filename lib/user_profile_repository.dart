import 'package:dio/dio.dart';
import 'package:error_handling_demo/exceptions.dart';
import 'package:error_handling_demo/register_use_case.dart';
import 'package:error_handling_demo/register_with_result_use_case.dart';
import 'package:error_handling_demo/user_profile.dart';

class UserProfileRepository {
  final Dio dio;
  final UserProfileMapper mapper;

  UserProfileRepository(this.dio, this.mapper);

  Future<UserProfile> register(String userName, String password) async {
    try {
      final response = await dio.post('http://www.example.com');

      _checkResponse(response);

      return mapper.map(response.data);
    } catch (e) {
      //Check the error, and return the correct exception
      //This is obviously mocked:
      throw NetworkException();
    }
  }

  ///We can maybe check the response and throw an error, if we want to.
  ///Partial GraphQL results however are no error case for me and wouldn't throw something.
  void _checkResponse(Response response) {
    if (response.data['passwordToShort'] != null) {
      throw RegisterException.passwordToShort();
    } else if (response.data['passwordInsecure'] != null) {
      throw RegisterException.passwordInsecure();
    }
  }

  Future<RegisterResult> registerWithResult(String userName, String password) async {
    try {
      final response = await dio.post('http://www.example.com');

      final errorResult = _checkResponse2(response);

      if (errorResult != null) {
        return errorResult;
      }

      return RegisterResult.success(profile: mapper.map(response.data));
    } catch (e) {
      return RegisterResult.someOtherError(error: e);
    }
  }

  RegisterResult _checkResponse2(Response response) {
    if (response.data['passwordToShort'] != null) {
      return RegisterResult.passwordToShort();
    } else if (response.data['passwordInsecure'] != null) {
      return RegisterResult.passwordInsecure();
    }
    return null;
  }
}

class UserProfileMapper {
  UserProfile map(dynamic data) {
    //Mocked:
    return UserProfile('Colin');
  }
}
