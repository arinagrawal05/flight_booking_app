import 'package:flight_demo_app/modules/search/pages/search_result_page.dart';
import 'package:flight_demo_app/modules/search/widgets/button.dart';
import 'package:flight_demo_app/ui_utils/app_sizing.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: AppSizing.sizeOnWidth375(331),
      // height: AppSizing.sizeOnHeight812(203),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        // borderRadius: bor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        children: [
          StandardButton(
              title: "Search Flight",
              ontap: () {
                print("Hello");

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => FlightListPage()));
              })
        ],
      ),
    );
  }
}
