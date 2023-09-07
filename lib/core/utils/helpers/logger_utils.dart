import 'package:logger/logger.dart';

final _logInstance = Logger();

// ignore: avoid_classes_with_only_static_members
class LogUtils {
  static Logger get logger => _logInstance;
}
