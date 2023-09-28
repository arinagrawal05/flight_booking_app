import 'package:flight_demo_app/modules/search/widgets/flight_show_card.dart';
import 'package:flight_demo_app/modules/search/widgets/search_header.dart';
import 'package:flight_demo_app/ui_utils/app_sizing.dart';
import 'package:flight_demo_app/ui_utils/app_ui_const.dart';
import 'package:flight_demo_app/ui_utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightListPage extends StatelessWidget {
  const FlightListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      // appBar: AppBar(
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     "Search Result",
      //     style: GoogleFonts.montserrat(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.transparent,
      // ),
      // extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          children: [
            SearchResultHeaderWidget(),
            Expanded(
                child: ListView(
              children: [
                FlightShowCardWidget(),
                FlightShowCardWidget(),
                FlightShowCardWidget(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
