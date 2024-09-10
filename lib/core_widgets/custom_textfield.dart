import 'package:flutter/material.dart';
import 'package:sportzbid/core/app_typography.dart';
import 'package:sportzbid/core/appcolor.dart';
import 'package:sportzbid/utilis/responsive.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onSuffixIconPressed;
  final TextInputType keyboardType; // Added keyboardType property

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.keyboardType = TextInputType.text, // Default to text keyboard
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive; // Get responsive instance

    return TextField(
      obscureText: _obscureText,
      keyboardType: widget.keyboardType, // Set the keyboard type
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTypography.interRegular.copyWith(
          fontSize: responsive.sp(16),
          color: Colors.white54,
        ),
        prefixIcon: widget.prefixIcon != null
            ? Icon(widget.prefixIcon, color: Colors.white54)
            : null,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: Icon(widget.suffixIcon, color: Colors.white54),
                onPressed: widget.onSuffixIconPressed,
              )
            : null,
        filled: true,
        fillColor: AppColors.textFeildColor,
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
