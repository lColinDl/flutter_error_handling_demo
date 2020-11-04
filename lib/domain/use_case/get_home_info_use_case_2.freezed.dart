// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'get_home_info_use_case_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeInfoResultTearOff {
  const _$HomeInfoResultTearOff();

  _HomeInfoResultSuccess success({@required HomeInfo data}) {
    return _HomeInfoResultSuccess(
      data: data,
    );
  }

  _HomeInfoResultError error({@required dynamic error}) {
    return _HomeInfoResultError(
      error: error,
    );
  }
}

// ignore: unused_element
const $HomeInfoResult = _$HomeInfoResultTearOff();

mixin _$HomeInfoResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(HomeInfo data),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(HomeInfo data),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_HomeInfoResultSuccess value),
    @required Result error(_HomeInfoResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_HomeInfoResultSuccess value),
    Result error(_HomeInfoResultError value),
    @required Result orElse(),
  });
}

abstract class $HomeInfoResultCopyWith<$Res> {
  factory $HomeInfoResultCopyWith(
          HomeInfoResult value, $Res Function(HomeInfoResult) then) =
      _$HomeInfoResultCopyWithImpl<$Res>;
}

class _$HomeInfoResultCopyWithImpl<$Res>
    implements $HomeInfoResultCopyWith<$Res> {
  _$HomeInfoResultCopyWithImpl(this._value, this._then);

  final HomeInfoResult _value;
  // ignore: unused_field
  final $Res Function(HomeInfoResult) _then;
}

abstract class _$HomeInfoResultSuccessCopyWith<$Res> {
  factory _$HomeInfoResultSuccessCopyWith(_HomeInfoResultSuccess value,
          $Res Function(_HomeInfoResultSuccess) then) =
      __$HomeInfoResultSuccessCopyWithImpl<$Res>;
  $Res call({HomeInfo data});
}

class __$HomeInfoResultSuccessCopyWithImpl<$Res>
    extends _$HomeInfoResultCopyWithImpl<$Res>
    implements _$HomeInfoResultSuccessCopyWith<$Res> {
  __$HomeInfoResultSuccessCopyWithImpl(_HomeInfoResultSuccess _value,
      $Res Function(_HomeInfoResultSuccess) _then)
      : super(_value, (v) => _then(v as _HomeInfoResultSuccess));

  @override
  _HomeInfoResultSuccess get _value => super._value as _HomeInfoResultSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_HomeInfoResultSuccess(
      data: data == freezed ? _value.data : data as HomeInfo,
    ));
  }
}

class _$_HomeInfoResultSuccess
    with DiagnosticableTreeMixin
    implements _HomeInfoResultSuccess {
  _$_HomeInfoResultSuccess({@required this.data}) : assert(data != null);

  @override
  final HomeInfo data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeInfoResult.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeInfoResult.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeInfoResultSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$HomeInfoResultSuccessCopyWith<_HomeInfoResultSuccess> get copyWith =>
      __$HomeInfoResultSuccessCopyWithImpl<_HomeInfoResultSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(HomeInfo data),
    @required Result error(dynamic error),
  }) {
    assert(success != null);
    assert(error != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(HomeInfo data),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_HomeInfoResultSuccess value),
    @required Result error(_HomeInfoResultError value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_HomeInfoResultSuccess value),
    Result error(_HomeInfoResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _HomeInfoResultSuccess implements HomeInfoResult {
  factory _HomeInfoResultSuccess({@required HomeInfo data}) =
      _$_HomeInfoResultSuccess;

  HomeInfo get data;
  _$HomeInfoResultSuccessCopyWith<_HomeInfoResultSuccess> get copyWith;
}

abstract class _$HomeInfoResultErrorCopyWith<$Res> {
  factory _$HomeInfoResultErrorCopyWith(_HomeInfoResultError value,
          $Res Function(_HomeInfoResultError) then) =
      __$HomeInfoResultErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class __$HomeInfoResultErrorCopyWithImpl<$Res>
    extends _$HomeInfoResultCopyWithImpl<$Res>
    implements _$HomeInfoResultErrorCopyWith<$Res> {
  __$HomeInfoResultErrorCopyWithImpl(
      _HomeInfoResultError _value, $Res Function(_HomeInfoResultError) _then)
      : super(_value, (v) => _then(v as _HomeInfoResultError));

  @override
  _HomeInfoResultError get _value => super._value as _HomeInfoResultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_HomeInfoResultError(
      error: error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$_HomeInfoResultError
    with DiagnosticableTreeMixin
    implements _HomeInfoResultError {
  _$_HomeInfoResultError({@required this.error}) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeInfoResult.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeInfoResult.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeInfoResultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$HomeInfoResultErrorCopyWith<_HomeInfoResultError> get copyWith =>
      __$HomeInfoResultErrorCopyWithImpl<_HomeInfoResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(HomeInfo data),
    @required Result error(dynamic error),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(HomeInfo data),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_HomeInfoResultSuccess value),
    @required Result error(_HomeInfoResultError value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_HomeInfoResultSuccess value),
    Result error(_HomeInfoResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeInfoResultError implements HomeInfoResult {
  factory _HomeInfoResultError({@required dynamic error}) =
      _$_HomeInfoResultError;

  dynamic get error;
  _$HomeInfoResultErrorCopyWith<_HomeInfoResultError> get copyWith;
}
