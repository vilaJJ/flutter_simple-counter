import 'package:flutter/material.dart';

class ImageCacheHelper {
  ImageCacheHelper(this.context);

  final BuildContext context;

  void addAssetImage({
    required String path,
  }) =>
      _add(
        provider: AssetImage(
          path,
        ),
      );

  void addAssetImages({
    required List<String> paths,
  }) {
    for (String path in paths) {
      addAssetImage(path: path);
    }
  }

  void addNetworkImage({
    required String url,
  }) =>
      _add(
        provider: NetworkImage(
          url,
        ),
      );

  void addNetworkImages({
    required List<String> urls,
  }) {
    for (String url in urls) {
      addNetworkImage(url: url);
    }
  }

  void clear() => _clear();

  void _add({
    required ImageProvider provider,
  }) {
    precacheImage(
      provider,
      context,
    );
  }

  void _clear() {
    imageCache.clear();
    imageCache.clearLiveImages();
  }
}
