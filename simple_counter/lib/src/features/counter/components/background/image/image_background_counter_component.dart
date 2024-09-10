import 'package:flutter/material.dart';
import 'package:simple_counter/src/shared/constants/assets/images/images_assets_constants.dart';

class ImageBackgroundCounterComponent extends DecorationImage {
  const ImageBackgroundCounterComponent({
    super.image = _imageProvider,
    super.fit = BoxFit.cover,
    super.filterQuality = FilterQuality.high,
    super.isAntiAlias = true,
  });

  static const ImageProvider _imageProvider = AssetImage(
    ImagesAssetsConstants.counterBackgroundImage,
  );
}
