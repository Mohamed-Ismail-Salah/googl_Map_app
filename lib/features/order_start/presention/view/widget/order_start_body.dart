import 'package:deliveryapp/core/utils/app_router.dart';
import 'package:deliveryapp/core/utils/app_size.dart';
import 'package:deliveryapp/core/utils/app_string.dart';
import 'package:deliveryapp/core/widgets/CustomButton.dart';
 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'startTextWidget.dart';

class OrderStartBody extends StatelessWidget {
  const OrderStartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const WelcomeWidget(),
const SizedBox(height: AppSize.s_150,),
        Padding(
          padding: const EdgeInsets.all(AppSize.s_10),
          child: CustomButton(
            borderRadius: AppSize.s_100,
              fontSize: AppSize.s_30,
              text: AppString.sStart,
              onPressed: () {
                 context.push(AppRouter.kWaitingView);
              }
          ),
        )
      ],
    );
  }
}
