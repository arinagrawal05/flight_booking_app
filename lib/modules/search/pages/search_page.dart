import 'package:flight_demo_app/modules/search/widgets/details_card.dart';
import 'package:flight_demo_app/modules/search/widgets/flight_show_card.dart';
import 'package:flight_demo_app/modules/search/widgets/search_header.dart';
import 'package:flight_demo_app/ui_utils/app_sizing.dart';
import 'package:flight_demo_app/ui_utils/app_ui_const.dart';
import 'package:flight_demo_app/ui_utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
            SizedBox(
              height: AppSizing.sizeOnHeight812(20),
            ),
            DetailsCard()
          ],
        ),
      ),
    );
  }

  Widget formTextField(
      TextEditingController controller, String labelText, String errorText,
      {bool isCompulsory = true,
      Function(String)? onChange,
      bool isAbsorbed = false,
      TextInputType? kType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: AbsorbPointer(
        absorbing: isAbsorbed,
        child: Container(
          child: TextField(
            // autofillHints: ["hello,bye ,goodnight"],
            // enableSuggestions: true,
            // enabled: false,
            onChanged: onChange,
            keyboardType: kType,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              labelText: labelText,
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            ),
          ),
        ),
      ),
    );
  }
}
