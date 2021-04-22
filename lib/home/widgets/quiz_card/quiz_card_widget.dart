import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widget/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 18.0),
          Text(
            'Gerenciamento de Estado',
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 18.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '3/10',
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(
                  value: 0.3,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
