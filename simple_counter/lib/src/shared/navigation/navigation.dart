import 'package:get/route_manager.dart';

class Navigation {
  Navigation._();

  static Future<void> irPara(
    String rota, {
    dynamic argumentos,
  }) async {
    await Get.toNamed(
      rota,
      arguments: argumentos,
    );
  }

  static Future<void> irParaRemovendoAnteriores(
    String rota, {
    dynamic argumentos,
  }) async {
    await Get.offAllNamed(
      rota,
      arguments: argumentos,
    );
  }

  static void voltar<T>({
    T? resultado,
    bool fecharOverlays = false,
  }) {
    Get.back<T>(
      result: resultado,
      closeOverlays: fecharOverlays,
    );
  }
}
