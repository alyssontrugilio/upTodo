import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const SecondaryButtonWidget({
    required this.title,
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: const WidgetStatePropertyAll(
          BorderSide(width: 0),
        ),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.lato(
          fontSize: 16,
        ),
      ),
    );
  }
}
