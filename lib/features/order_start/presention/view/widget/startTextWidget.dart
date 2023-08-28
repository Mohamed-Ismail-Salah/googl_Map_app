import 'package:deliveryapp/core/utils/app_size.dart';
import 'package:deliveryapp/core/utils/app_string.dart';
import 'package:deliveryapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: AppSize.s_20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            AppString.sHi,
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: AppSize.s_30,
          ),
          Text(
            AppString.sWelcome,
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: AppSize.s_10,
          ),
          Text(
            AppString.sInstructions,
            style: Styles.textStyle18,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
