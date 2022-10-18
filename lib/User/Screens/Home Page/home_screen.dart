import 'package:flutter/material.dart';
import 'package:otcon/User/Screens/My%20Schedule/my_schedule_page.dart';
import 'package:otcon/User/Screens/Notifications/notification_page.dart';
import 'package:otcon/User/Screens/Schedule/schedule_page.dart';
import 'package:otcon/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  var currentIndex = 0;
  final List<Widget> screens = [
    MySchedulePage(),
    SchedulePage(),
    NotificationPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MySchedulePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 10,
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
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = MySchedulePage();
                          currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 30,
                            color: currentIndex == 0
                                ? appUiBlueColor
                                : Colors.grey,
                          ),
                          Text(
                            "My Schedule",
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = SchedulePage();
                          currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today_sharp,
                            size: 30,
                            color: currentIndex == 1
                                ? appUiBlueColor
                                : Colors.grey,
                          ),
                          Text(
                            "Schedule",
                            style: TextStyle(
                              color: currentIndex == 1
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = NotificationPage();
                          currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: currentIndex == 2
                                ? appUiBlueColor
                                : Colors.grey,
                          ),
                          Text(
                            "Notification",
                            style: TextStyle(
                              color: currentIndex == 2
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
