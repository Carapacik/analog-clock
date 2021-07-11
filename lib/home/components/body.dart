import 'package:analogclock/home/components/clock.dart';
import 'package:analogclock/home/components/country_widget.dart';
import 'package:analogclock/home/components/time_widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Moscow, Russia | MSK",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeWidget(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountyWidget(
                    country: "Moscow, Russia",
                    timeZone: "+3 HRS | MSK",
                    time: '9:20',
                    iconPath: "assets/icons/Liberty.svg",
                    period: "AM",
                  ),
                  CountyWidget(
                    country: "Sydney, AU",
                    timeZone: "+19 HRS | AEST",
                    iconPath: "assets/icons/Sydney.svg",
                    time: "1:20",
                    period: "AM",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
