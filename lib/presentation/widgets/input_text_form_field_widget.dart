import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextFormFieldWidget extends StatelessWidget {
  final void Function(String value)? onChanged;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  const InputTextFormFieldWidget({
    required this.hintText,
    super.key,
    this.onChanged,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: GoogleFonts.lato(
        color: Colors.white,
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: const Color(0xff1D1D1D),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff979797),
          ),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.lato(
          color: const Color(0xff535353),
        ),
      ),
    );
  }
}
