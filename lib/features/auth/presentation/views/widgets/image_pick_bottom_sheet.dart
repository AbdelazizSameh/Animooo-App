import 'package:flutter/material.dart';
import 'image_source_button.dart';

class ImagePickBottomSheet extends StatelessWidget {
  const ImagePickBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsGeometry.all(12),
        child: Column(
          mainAxisSize: .min,
          children: [
            ImageSourceButton(
              text: 'Photo Gallery',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              onPressed: () {},
            ),
            ImageSourceButton(
              text: 'Camera',
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            ImageSourceButton(
              text: 'Cancel',
              borderRadius: BorderRadiusGeometry.circular(10),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
