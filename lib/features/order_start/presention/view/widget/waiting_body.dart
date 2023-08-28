import 'dart:async';
import 'package:deliveryapp/core/utils/app_router.dart';
import 'package:deliveryapp/features/order_start/presention/view/widget/waiting_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_size.dart';
import 'Circle_Counter_widget.dart';

class WaitingBody extends StatefulWidget {
  const WaitingBody({super.key});
  @override
  State<WaitingBody> createState() => _WaitingBodyState();
}
double hAnimation = 0;
int seconds = 0;
int minutes = 0;
class _WaitingBodyState extends State<WaitingBody> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
        seconds==10?context.pushReplacement(AppRouter.kMapView):null;
        hAnimation = (hAnimation == 150) ? 200 : 150;
      });
    });
    timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      setState(() {
        minutes++;

        seconds = 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const WaitingTextWidget(),
          const SizedBox(
            height: AppSize.s_100,
          ),
          // ignore: prefer_const_constructors
          Center(
            // ignore: prefer_const_constructors
            child: CircleCounter(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
