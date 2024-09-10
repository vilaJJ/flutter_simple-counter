import 'package:get/get.dart';

extension RxExtension on List<Rx<dynamic>?> {
  void close() {
    for (final rx in this) {
      if (rx == null) {
        continue;
      }
      rx.close();
    }
  }
}
