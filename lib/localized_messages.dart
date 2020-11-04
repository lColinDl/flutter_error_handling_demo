/* *************************************
 *
 *     DISCLAIMER
 *
 * This is all Details. And can be done completely different.
 * I just wanted to have a more or less complete example.
 *
 * ***********************************/

abstract class LocalizedMessage {
  String get msgKey;

  factory LocalizedMessage(String msgKey) => _LocalizedMessage(msgKey);
}

class _LocalizedMessage implements LocalizedMessage {
  final String msgKey;
  _LocalizedMessage(this.msgKey);
}

abstract class MessageFactory {
  static RemoteLocalizations localizations = RemoteLocalizations._();

  static String getMessage(dynamic data) {
    if (data is String) {
      return data;
    } else if (data is LocalizedMessage) {
      return localizations.get(data.msgKey);
    } else {
      return null;
    }
  }
}

class RemoteLocalizations {
  RemoteLocalizations._();

  String get(String key) => '__${key}__';
}
