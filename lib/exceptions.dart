import 'package:error_handling_demo/localized_messages.dart';

abstract class LocalizedException implements Exception, LocalizedMessage {}

class NetworkException implements LocalizedException {
  final String msgKey = 'network_error';
}
