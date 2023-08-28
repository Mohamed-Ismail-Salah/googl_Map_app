import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_size.dart';



class AnimationImageWidget extends StatelessWidget {
  const AnimationImageWidget({
    super.key,
    required Animation<Offset> animation,
  }) : _animation = animation;

  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: SlideTransition(
            position: _animation,
            child: Image.asset(
              AppImages.logoPath,
              height: AppSize.s_150,
              width: AppSize.s_150,
            ), // Replace with your image widget
          ),
        ),
      ],
    );
  }
}
