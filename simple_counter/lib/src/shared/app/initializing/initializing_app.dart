import 'package:flutter/material.dart';
import 'package:simple_counter/src/shared/app/context/context_app.dart';
import 'package:simple_counter/src/shared/constants/assets/images/images_assets_constants.dart';
import 'package:simple_counter/src/shared/helpers/cache/image/image_cache_helper.dart';
import 'package:url_strategy/url_strategy.dart';

class InitializingApp {
  InitializingApp._();

  static InitializingApp? _instance;
  static InitializingApp get instance => _instance ?? InitializingApp._();

  void start() {
    setPathUrlStrategy();
    WidgetsFlutterBinding.ensureInitialized();
  }

  void addAssetImagesOnCache({
    BuildContext? context,
  }) {
    context ??= ContextApp.instance.context;

    List<String> imagePaths = <String>[
      ImagesAssetsConstants.counterBackgroundImage,
    ];
    ImageCacheHelper(context).addAssetImages(paths: imagePaths);
  }
}
