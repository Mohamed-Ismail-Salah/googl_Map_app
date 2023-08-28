import 'package:flutter/material.dart';

import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_string.dart';
import '../../../../../core/utils/app_styles.dart';

class WaitingTextWidget extends StatelessWidget{
  const WaitingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: AppSize.s_20),
       child: Column(children: const [
         Text(AppString.sOrderProcessing,style: Styles.textStyle18,textAlign: TextAlign.center,),
         SizedBox(height: AppSize.s_10,),
         Text(AppString.sPageStarted,style: Styles.textStyle18,textAlign: TextAlign.center,),
       ],),
     );
  }

}