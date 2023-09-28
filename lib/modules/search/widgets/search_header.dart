import 'package:flight_demo_app/ui_utils/app_sizing.dart';
import 'package:flight_demo_app/ui_utils/app_ui_const.dart';
import 'package:flight_demo_app/ui_utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultHeaderWidget extends StatelessWidget {
  const SearchResultHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          width: AppUIConst.screenWidth,
          height: AppSizing.sizeOnHeight812(285),
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 36, bottom: 59, top: 30),
                  child: Image.asset("assets/images/map_bg.png")),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                      // height: AppSizing.sizeOnHeight812(60),
                      child: Image.asset("assets/images/map_pointer.png")),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 36, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "Search Result",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 23, top: 12),
                    child: Text(
                      "All Flight Here",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
    ;
  }
}
