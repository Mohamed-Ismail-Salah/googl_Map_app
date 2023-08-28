import 'package:deliveryapp/core/utils/app_size.dart';
import 'package:deliveryapp/core/utils/app_styles.dart';
import 'package:deliveryapp/features/order_start/presention/view/widget/waiting_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CircleCounter extends StatelessWidget {
  const CircleCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: hAnimation,
      height: hAnimation,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.secondaryColor,
      ),
      duration: const Duration(seconds: 1),
      child: Center(
        child: Container(
          width: AppSize.s_150,
          height: AppSize.s_150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primerColor,
          ),
          child: Center(
            child: Text('$minutes:$seconds',
                style: Styles.textStyle30.copyWith(
                    color: AppColor.whiteColor, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
