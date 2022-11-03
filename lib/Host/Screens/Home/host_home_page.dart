import 'package:flutter/material.dart';
import 'package:otcon/Host/Screens/Home/Schedule/host_schedule_page.dart';
import 'package:otcon/Host/Screens/Home/Status/host_status_page.dart';

import '../../../utils/constants.dart';

class HostHomePage extends StatefulWidget {
  const HostHomePage({Key? key}) : super(key: key);

  @override
  State<HostHomePage> createState() => _HostHomePageState();
}

class _HostHomePageState extends State<HostHomePage> {
  var currentIndex = 0;
  final List<Widget> screens = [HostSchedulePage(), HostStatusPage()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HostSchedulePage();

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
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HostSchedulePage();
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_today_sharp,
                        size: 30,
                        color: currentIndex == 0 ? appUiBlueColor : Colors.grey,
                      ),
                      Text(
                        "Schedule",
                        style: TextStyle(
                          color:
                              currentIndex == 0 ? appUiBlueColor : Colors.grey,
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
                      currentScreen = HostStatusPage();
                      currentIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        size: 30,
                        color: currentIndex == 1 ? appUiBlueColor : Colors.grey,
                      ),
                      Column(
                        children: [
                          Text(
                            "Presentation",
                            style: TextStyle(
                              color: currentIndex == 1
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                          ),
                          Text(
                            "Status",
                            style: TextStyle(
                              color: currentIndex == 1
                                  ? appUiBlueColor
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
