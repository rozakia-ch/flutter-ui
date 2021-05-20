import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({
    Key key,
    this.height,
    this.width,
    this.url,
    this.fit,
  }) : super(key: key);
  final double height, width;
  final String url;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      width: width,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset("assets/placeholder.png", fit: BoxFit.cover);
      },
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          height: 100.0,
          child: Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                  : null,
            ),
          ),
        );
      },
    );
  }
}
