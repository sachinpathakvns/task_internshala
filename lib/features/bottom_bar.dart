import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_internshala/features/Task_design.dart';
import 'package:task_internshala/features/anotherscreen.dart';
import 'package:task_internshala/features/widget/customtext.dart';


// ignore: must_be_immutable
class BottomBar extends StatefulWidget {
  int pageIndex;

  BottomBar({super.key, this.pageIndex = 0});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void changePage(int index) {
    setState(() {
      widget.pageIndex = index;
    });
  }

  // permision() async {
  //   NotificationSettings settings =
  //   await FirebaseMessaging.instance.requestPermission(
  //     alert: true,
  //     announcement: false,
  //     badge: true,
  //     carPlay: false,
  //     criticalAlert: false,
  //     provisional: false,
  //     sound: true,
  //   );
  // }

  @override
  void initState() {
    super.initState();
    // permision();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      TaskDesign(),
      SecondScreen(),
      SecondScreen(),
      SecondScreen(),
      SecondScreen(),
    ];
    return WillPopScope(
      onWillPop: () => exit(0),
      child: Scaffold(
        // backgroundColor: StemColors.background,
        body: pages[widget.pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
    );
  }

  SystemUiOverlayStyle androidOverlay = const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    //statusBarColor: StemColors.background, // status bar color
    statusBarBrightness: Brightness.dark, //status bar brigtness
    statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
    systemNavigationBarDividerColor:
    Colors.white, //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  );

  SystemUiOverlayStyle iosOverlay = const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.black, // status bar color
    statusBarBrightness: Brightness.dark, //status bar brigtness
    statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
    systemNavigationBarDividerColor:
    Colors.white, //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  );

  Widget buildMyNavBar(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        Platform.isIOS ? iosOverlay : androidOverlay);
    return Container(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          onTap: changePage,
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.pageIndex,
          backgroundColor: Colors.white,
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Puritan',
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(3, 25, 38, 1),
          ),
          selectedItemColor: Colors.blue,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Puritan',
            fontWeight: FontWeight.w700,
          ),
          items: [
            // BottomNavigationBarItem(
            //   icon: Image.asset(
            //     "assets/images/qr_generate.png",
            //     height: 25,
            //     color: widget.pageIndex == 0
            //         ? AppColors.bottomBarinActiveIconColor
            //         : Colors.black,
            //   ),
            //   label: 'Generate',
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
                color: widget.pageIndex == 0
                    ? Colors.blue
                    : Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/book.png",
                height: 25,
                color: widget.pageIndex == 1
                    ? Colors.blue
                    : Colors.black,
              ),
              label: 'Learn',
            ),BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/drawer.png",
                height: 25,
                color: widget.pageIndex == 2
                    ? Colors.blue
                    : Colors.black,
              ),
              label: 'Hub',
            ),BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/chat.png",
                height: 25,
                color: widget.pageIndex == 3
                    ? Colors.blue
                    : Colors.black,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/Ellipse 14.png",
                height: 25,
                // color: widget.pageIndex == 4
                //     ? Colors.blue
                //     : Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(
      {IconData? offIcon, IconData? onIcon, String text = '', pageIndex = 0}) {
    const double iconSize = 30;
    const double textSize = 10;
    return GestureDetector(
      onTap: () {
        changePage(pageIndex);
      },
      child: Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            widget.pageIndex == pageIndex
                ? Icon(
              onIcon,
              color: Colors.blue,
              size: iconSize,
            )
                : Icon(
              offIcon,
              color: Colors.black87,
              size: iconSize,
            ),
            const SizedBox(height: 2),
            customText(
                text: text,
                size: 12,
                fontValue: 700,
                color: (widget.pageIndex == pageIndex)
                    ? Colors.blue
                    : Colors.white
            )
            //  ContentName(name: text, color: StemColors.bodyText, size: textSize),
          ],
        ),
      ),
    );
  }
}
