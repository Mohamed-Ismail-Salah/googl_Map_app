import 'package:deliveryapp/features/order_start/presention/view/widget/waiting_body.dart' show WaitingBody;
import 'package:flutter/material.dart';

class WaitingView extends StatelessWidget{
  const WaitingView({super.key});

  @override
  Widget build(BuildContext context) {
   return   const SafeArea(
     child: Scaffold(
       body: WaitingBody(),
     ),
   );
  }

}