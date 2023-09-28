import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flight_demo_app/modules/home_page/homepage.dart';
import 'package:flight_demo_app/modules/search/pages/search_page.dart';
import 'package:flight_demo_app/modules/search/pages/search_result_page.dart';
import 'package:flight_demo_app/ui_utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  late PageController controller;
  var currentPageValue = 0.0;
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: AppColors.primaryColor,
          key: _bottomNavigationKey,
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.flight,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (n) {
            // Page change using state does the same as clicking index 1 navigation button
            final CurvedNavigationBarState? navBarState =
                _bottomNavigationKey.currentState;
            navBarState?.setPage(n);
          },
          children: const [
            FlightListPage(),
            FlightListPage(),
            FlightListPage(),
          ],
        ));
  }
}
