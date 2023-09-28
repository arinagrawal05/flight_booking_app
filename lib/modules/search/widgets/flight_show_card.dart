import 'package:flight_demo_app/ui_utils/app_sizing.dart';
import 'package:flight_demo_app/ui_utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';

class FlightShowCardWidget extends StatelessWidget {
  const FlightShowCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: TicketWidget(
        // margin: EdgeInsets.all(20),
        shadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 0.5,
          ),
        ],
        width: AppSizing.sizeOnWidth375(331),
        height: AppSizing.sizeOnHeight812(203),
        isCornerRounded: true,
        padding: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Indigo",
                    style: GoogleFonts.montserrat(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: AppSizing.sizeOnHeight812(48),
                    width: AppSizing.sizeOnWidth375(86),
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IndiGo_Airlines_logo.svg/2560px-IndiGo_Airlines_logo.svg.png"),
                  ),
                  Text(
                    "Rs.3450",
                    style: GoogleFonts.montserrat(
                        color: Color(0xffFF7A00),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizing.sizeOnHeight812(22),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  trip("Depart", "12:45"),
                  Spacer(),
                  trip("Arrival", "6:40"),
                ],
              ),
              SizedBox(
                height: AppSizing.sizeOnHeight812(25),
              ),
              Text(
                "View More",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget trip(String label, String time) {
    return Container(
      child: Column(
        children: [
          Text(
            label,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.grey.shade300),
          ),
          Text(
            time,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
