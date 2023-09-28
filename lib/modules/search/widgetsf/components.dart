import 'package:flutter/material.dart';

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
        child: TextFormField(
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
          validator: (value) {
            if (isCompulsory) {
              if (value!.isEmpty) {
                return errorText;
              }
              return null;
            }
          },
        ),
      ),
    ),
  );
}
