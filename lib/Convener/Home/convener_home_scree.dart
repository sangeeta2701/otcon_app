import 'package:flutter/material.dart';
import 'package:otcon/Convener/Home/Notification/convener_notification_page.dart';
import 'package:otcon/Convener/Home/Tracking/tracking_page.dart';
import 'package:otcon/Convener/Home/schedule/convener_schedule.dart';
import 'package:otcon/Convener/Home/status/presentation_status.dart';

import '../../utils/constants.dart';

class ConvenerHomeScreen extends StatefulWidget {
  const ConvenerHomeScreen({Key? key}) : super(key: key);

  @override
  State<ConvenerHomeScreen> createState() => _ConvenerHomeScreenState();
}

class _ConvenerHomeScreenState extends State<ConvenerHomeScreen> {
  var currentIndex = 0;
  final List<Widget> screens = [
    ConvenerScgedulePage(),
    ConvenerTrackingPage(),
    PresentationStatusPage(),
    ConvenerNotificationPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ConvenerScgedulePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 10,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = ConvenerScgedulePage();
                            currentIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today_sharp,
                              size: 30,
                              color: currentIndex == 0
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                            Text(
                              "Schedule",
                              style: TextStyle(
                                color: currentIndex == 0
                                    ? appUiBlueColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ConvenerTrackingPage();
                          currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30,
                            color: currentIndex == 1
                                ? appUiBlueColor
                                : Colors.grey,
                          ),
                          Text(
                            "Tracking",
                            style: TextStyle(
                              color: currentIndex == 1
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = PresentationStatusPage();
                          currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_box_outlined,
                            size: 30,
                            color: currentIndex == 2
                                ? appUiBlueColor
                                : Colors.grey,
                          ),
                          Column(
                            children: [
                              Text(
                                "Presentation",
                                style: TextStyle(
                                  color: currentIndex == 2
                                      ? appUiBlueColor
                                      : Colors.grey,
                                ),
                              ),
                              Text(
                                "Status",
                                style: TextStyle(
                                  color: currentIndex == 2
                                      ? appUiBlueColor
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ConvenerNotificationPage();
                          currentIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications_none,
                            size: 30,
                            color: currentIndex == 3
                                ? appUiBlueColor
                                : Colors.grey,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: currentIndex == 3
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
