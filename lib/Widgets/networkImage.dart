import 'package:flutter/material.dart';

Widget networkImageWidget(BuildContext context, String url, BoxFit fitness) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.network(
    url,
    fit: fitness,
    loadingBuilder: (context, child, loadingPrograss) {
      if (loadingPrograss == null) return child;
      return Center(
        child: CircularProgressIndicator(
          value: loadingPrograss.expectedTotalBytes != null
              ? loadingPrograss.cumulativeBytesLoaded /
                  loadingPrograss.expectedTotalBytes!
              : null,
        ),
      );
    },
  ));
}
