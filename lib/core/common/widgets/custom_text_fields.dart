import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color borderColor;
  final Color focusBorderColor;
  final Color fillColor;
  final int maxLines;
  void Function(String)? onChanged;

  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.borderColor = Colors.grey,
    this.focusBorderColor = const Color(0xFFFC961A),
    this.fillColor = Colors.white,
    this.maxLines = 1,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {}); // focus change হলে rebuild হবে
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.fillColor,
        border: Border.all(
          width: 1.5,
          color: _focusNode.hasFocus
              ? widget.focusBorderColor
              : widget.borderColor,
        ),
      ),
      child: TextField(
        focusNode: _focusNode,
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Color(0xFF8C8C8C)),
          prefixIcon: widget.prefixIcon != null
              ? Padding(
            padding: const EdgeInsets.all(10.0),
            child: widget.prefixIcon,
          )
              : null,
          suffixIcon: widget.suffixIcon != null
              ? Padding(
            padding: const EdgeInsets.all(10.0),
            child: widget.suffixIcon,
          )
              : null,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}