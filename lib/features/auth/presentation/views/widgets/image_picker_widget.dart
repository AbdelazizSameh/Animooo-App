import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/dashed_border_painter.dart';
import 'image_pick_bottom_sheet.dart';
import 'text_field_label.dart';

class ImagePickWidget extends StatelessWidget {
  const ImagePickWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldLabel(label: 'Upload Image For Your Profile'),
        const SizedBox(height: 16),
        InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => const ImagePickBottomSheet(),
          ),
          borderRadius: BorderRadius.circular(12),
          child: CustomPaint(
            painter: DashedBorderPainter(
              color: AppColors.primary,
              dashSpace: 2,
              dashWidth: 2,
              raduis: 10,
              strokeWidth: 1,
            ),
            child: SizedBox(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image, size: 40, color: AppColors.primary),
                  const SizedBox(height: 12),
                  const Text(
                    'Select file',
                    style: TextStyle(fontSize: 16, color: AppColors.primary),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
