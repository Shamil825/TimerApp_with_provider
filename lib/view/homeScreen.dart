import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first/view/timer_info.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      var timerInfo = Provider.of<TimerInfo>(context,listen: false);
      timerInfo.updateRemaningTime();
      // setState(() {
      //   initvalue--;
      // },
      // );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("nice");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/stopwatch.png"),
            SizedBox(height: 32,),
           
            Consumer<TimerInfo>(
                builder: ((context, value, child) => Text(
                      value.getReminingtime().toString(),
                      style:const TextStyle(fontSize: 72),
                    )))
          ],
        ),
      ),
    );
  }
}
