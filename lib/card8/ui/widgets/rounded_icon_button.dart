import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key,
    this.iconData,
    this.label,
    this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        primary: Colors.black,
        shape: StadiumBorder(
          side: BorderSide(color: Colors.grey[200], width: 1.5),
        ),
        padding: const EdgeInsets.fromLTRB(5, 5, 8, 5),
      ),
      onPressed: onPressed,
      icon: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColorDark,
            ],
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
      label: Text(
        label,
        softWrap: false,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
