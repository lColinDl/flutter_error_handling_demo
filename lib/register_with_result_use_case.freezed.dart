// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_with_result_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterResultTearOff {
  const _$RegisterResultTearOff();

  _RegisterResultSuccess success({@required UserProfile profile}) {
    return _RegisterResultSuccess(
      profile: profile,
    );
  }

  _RegisterResultPasswordToShort passwordToShort() {
    return _RegisterResultPasswordToShort();
  }

  _RegisterResultPasswordInsecure passwordInsecure() {
    return _RegisterResultPasswordInsecure();
  }

  _RegisterResultSomeOtherError someOtherError({@required dynamic error}) {
    return _RegisterResultSomeOtherError(
      error: error,
    );
  }
}

// ignore: unused_element
const $RegisterResult = _$RegisterResultTearOff();

mixin _$RegisterResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(UserProfile profile),
    @required Result passwordToShort(),
    @required Result passwordInsecure(),
    @required Result someOtherError(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(UserProfile profile),
    Result passwordToShort(),
    Result passwordInsecure(),
    Result someOtherError(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_RegisterResultSuccess value),
    @required Result passwordToShort(_RegisterResultPasswordToShort value),
    @required Result passwordInsecure(_RegisterResultPasswordInsecure value),
    @required Result someOtherError(_RegisterResultSomeOtherError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_RegisterResultSuccess value),
    Result passwordToShort(_RegisterResultPasswordToShort value),
    Result passwordInsecure(_RegisterResultPasswordInsecure value),
    Result someOtherError(_RegisterResultSomeOtherError value),
    @required Result orElse(),
  });
}

abstract class $RegisterResultCopyWith<$Res> {
  factory $RegisterResultCopyWith(
          RegisterResult value, $Res Function(RegisterResult) then) =
      _$RegisterResultCopyWithImpl<$Res>;
}

class _$RegisterResultCopyWithImpl<$Res>
    implements $RegisterResultCopyWith<$Res> {
  _$RegisterResultCopyWithImpl(this._value, this._then);

  final RegisterResult _value;
  // ignore: unused_field
  final $Res Function(RegisterResult) _then;
}

abstract class _$RegisterResultSuccessCopyWith<$Res> {
  factory _$RegisterResultSuccessCopyWith(_RegisterResultSuccess value,
          $Res Function(_RegisterResultSuccess) then) =
      __$RegisterResultSuccessCopyWithImpl<$Res>;
  $Res call({UserProfile profile});
}

class __$RegisterResultSuccessCopyWithImpl<$Res>
    extends _$RegisterResultCopyWithImpl<$Res>
    implements _$RegisterResultSuccessCopyWith<$Res> {
  __$RegisterResultSuccessCopyWithImpl(_RegisterResultSuccess _value,
      $Res Function(_RegisterResultSuccess) _then)
      : super(_value, (v) => _then(v as _RegisterResultSuccess));

  @override
  _RegisterResultSuccess get _value => super._value as _RegisterResultSuccess;

  @override
  $Res call({
    Object profile = freezed,
  }) {
    return _then(_RegisterResultSuccess(
      profile: profile == freezed ? _value.profile : profile as UserProfile,
    ));
  }
}

class _$_RegisterResultSuccess
    with DiagnosticableTreeMixin
    implements _RegisterResultSuccess {
  _$_RegisterResultSuccess({@required this.profile}) : assert(profile != null);

  @override
  final UserProfile profile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResult.success(profile: $profile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResult.success'))
      ..add(DiagnosticsProperty('profile', profile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterResultSuccess &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @override
  _$RegisterResultSuccessCopyWith<_RegisterResultSuccess> get copyWith =>
      __$RegisterResultSuccessCopyWithImpl<_RegisterResultSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(UserProfile profile),
    @required Result passwordToShort(),
    @required Result passwordInsecure(),
    @required Result someOtherError(dynamic error),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return success(profile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(UserProfile profile),
    Result passwordToShort(),
    Result passwordInsecure(),
    Result someOtherError(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_RegisterResultSuccess value),
    @required Result passwordToShort(_RegisterResultPasswordToShort value),
    @required Result passwordInsecure(_RegisterResultPasswordInsecure value),
    @required Result someOtherError(_RegisterResultSomeOtherError value),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_RegisterResultSuccess value),
    Result passwordToShort(_RegisterResultPasswordToShort value),
    Result passwordInsecure(_RegisterResultPasswordInsecure value),
    Result someOtherError(_RegisterResultSomeOtherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterResultSuccess implements RegisterResult {
  factory _RegisterResultSuccess({@required UserProfile profile}) =
      _$_RegisterResultSuccess;

  UserProfile get profile;
  _$RegisterResultSuccessCopyWith<_RegisterResultSuccess> get copyWith;
}

abstract class _$RegisterResultPasswordToShortCopyWith<$Res> {
  factory _$RegisterResultPasswordToShortCopyWith(
          _RegisterResultPasswordToShort value,
          $Res Function(_RegisterResultPasswordToShort) then) =
      __$RegisterResultPasswordToShortCopyWithImpl<$Res>;
}

class __$RegisterResultPasswordToShortCopyWithImpl<$Res>
    extends _$RegisterResultCopyWithImpl<$Res>
    implements _$RegisterResultPasswordToShortCopyWith<$Res> {
  __$RegisterResultPasswordToShortCopyWithImpl(
      _RegisterResultPasswordToShort _value,
      $Res Function(_RegisterResultPasswordToShort) _then)
      : super(_value, (v) => _then(v as _RegisterResultPasswordToShort));

  @override
  _RegisterResultPasswordToShort get _value =>
      super._value as _RegisterResultPasswordToShort;
}

class _$_RegisterResultPasswordToShort
    with DiagnosticableTreeMixin
    implements _RegisterResultPasswordToShort {
  _$_RegisterResultPasswordToShort();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResult.passwordToShort()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResult.passwordToShort'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterResultPasswordToShort);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(UserProfile profile),
    @required Result passwordToShort(),
    @required Result passwordInsecure(),
    @required Result someOtherError(dynamic error),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return passwordToShort();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(UserProfile profile),
    Result passwordToShort(),
    Result passwordInsecure(),
    Result someOtherError(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordToShort != null) {
      return passwordToShort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_RegisterResultSuccess value),
    @required Result passwordToShort(_RegisterResultPasswordToShort value),
    @required Result passwordInsecure(_RegisterResultPasswordInsecure value),
    @required Result someOtherError(_RegisterResultSomeOtherError value),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return passwordToShort(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_RegisterResultSuccess value),
    Result passwordToShort(_RegisterResultPasswordToShort value),
    Result passwordInsecure(_RegisterResultPasswordInsecure value),
    Result someOtherError(_RegisterResultSomeOtherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordToShort != null) {
      return passwordToShort(this);
    }
    return orElse();
  }
}

abstract class _RegisterResultPasswordToShort implements RegisterResult {
  factory _RegisterResultPasswordToShort() = _$_RegisterResultPasswordToShort;
}

abstract class _$RegisterResultPasswordInsecureCopyWith<$Res> {
  factory _$RegisterResultPasswordInsecureCopyWith(
          _RegisterResultPasswordInsecure value,
          $Res Function(_RegisterResultPasswordInsecure) then) =
      __$RegisterResultPasswordInsecureCopyWithImpl<$Res>;
}

class __$RegisterResultPasswordInsecureCopyWithImpl<$Res>
    extends _$RegisterResultCopyWithImpl<$Res>
    implements _$RegisterResultPasswordInsecureCopyWith<$Res> {
  __$RegisterResultPasswordInsecureCopyWithImpl(
      _RegisterResultPasswordInsecure _value,
      $Res Function(_RegisterResultPasswordInsecure) _then)
      : super(_value, (v) => _then(v as _RegisterResultPasswordInsecure));

  @override
  _RegisterResultPasswordInsecure get _value =>
      super._value as _RegisterResultPasswordInsecure;
}

class _$_RegisterResultPasswordInsecure
    with DiagnosticableTreeMixin
    implements _RegisterResultPasswordInsecure {
  _$_RegisterResultPasswordInsecure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResult.passwordInsecure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResult.passwordInsecure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterResultPasswordInsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(UserProfile profile),
    @required Result passwordToShort(),
    @required Result passwordInsecure(),
    @required Result someOtherError(dynamic error),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return passwordInsecure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(UserProfile profile),
    Result passwordToShort(),
    Result passwordInsecure(),
    Result someOtherError(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordInsecure != null) {
      return passwordInsecure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_RegisterResultSuccess value),
    @required Result passwordToShort(_RegisterResultPasswordToShort value),
    @required Result passwordInsecure(_RegisterResultPasswordInsecure value),
    @required Result someOtherError(_RegisterResultSomeOtherError value),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return passwordInsecure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_RegisterResultSuccess value),
    Result passwordToShort(_RegisterResultPasswordToShort value),
    Result passwordInsecure(_RegisterResultPasswordInsecure value),
    Result someOtherError(_RegisterResultSomeOtherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordInsecure != null) {
      return passwordInsecure(this);
    }
    return orElse();
  }
}

abstract class _RegisterResultPasswordInsecure implements RegisterResult {
  factory _RegisterResultPasswordInsecure() = _$_RegisterResultPasswordInsecure;
}

abstract class _$RegisterResultSomeOtherErrorCopyWith<$Res> {
  factory _$RegisterResultSomeOtherErrorCopyWith(
          _RegisterResultSomeOtherError value,
          $Res Function(_RegisterResultSomeOtherError) then) =
      __$RegisterResultSomeOtherErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class __$RegisterResultSomeOtherErrorCopyWithImpl<$Res>
    extends _$RegisterResultCopyWithImpl<$Res>
    implements _$RegisterResultSomeOtherErrorCopyWith<$Res> {
  __$RegisterResultSomeOtherErrorCopyWithImpl(
      _RegisterResultSomeOtherError _value,
      $Res Function(_RegisterResultSomeOtherError) _then)
      : super(_value, (v) => _then(v as _RegisterResultSomeOtherError));

  @override
  _RegisterResultSomeOtherError get _value =>
      super._value as _RegisterResultSomeOtherError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_RegisterResultSomeOtherError(
      error: error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$_RegisterResultSomeOtherError
    with DiagnosticableTreeMixin
    implements _RegisterResultSomeOtherError {
  _$_RegisterResultSomeOtherError({@required this.error})
      : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResult.someOtherError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResult.someOtherError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterResultSomeOtherError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$RegisterResultSomeOtherErrorCopyWith<_RegisterResultSomeOtherError>
      get copyWith => __$RegisterResultSomeOtherErrorCopyWithImpl<
          _RegisterResultSomeOtherError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(UserProfile profile),
    @required Result passwordToShort(),
    @required Result passwordInsecure(),
    @required Result someOtherError(dynamic error),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return someOtherError(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(UserProfile profile),
    Result passwordToShort(),
    Result passwordInsecure(),
    Result someOtherError(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (someOtherError != null) {
      return someOtherError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_RegisterResultSuccess value),
    @required Result passwordToShort(_RegisterResultPasswordToShort value),
    @required Result passwordInsecure(_RegisterResultPasswordInsecure value),
    @required Result someOtherError(_RegisterResultSomeOtherError value),
  }) {
    assert(success != null);
    assert(passwordToShort != null);
    assert(passwordInsecure != null);
    assert(someOtherError != null);
    return someOtherError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_RegisterResultSuccess value),
    Result passwordToShort(_RegisterResultPasswordToShort value),
    Result passwordInsecure(_RegisterResultPasswordInsecure value),
    Result someOtherError(_RegisterResultSomeOtherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (someOtherError != null) {
      return someOtherError(this);
    }
    return orElse();
  }
}

abstract class _RegisterResultSomeOtherError implements RegisterResult {
  factory _RegisterResultSomeOtherError({@required dynamic error}) =
      _$_RegisterResultSomeOtherError;

  dynamic get error;
  _$RegisterResultSomeOtherErrorCopyWith<_RegisterResultSomeOtherError>
      get copyWith;
}
