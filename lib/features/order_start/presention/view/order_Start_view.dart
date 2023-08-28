
import 'package:deliveryapp/features/order_start/presention/view/widget/order_start_body.dart';
import 'package:flutter/material.dart';

class OrderStartView extends StatelessWidget{
  const OrderStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: OrderStartBody(),
      ),
    );

  }

}