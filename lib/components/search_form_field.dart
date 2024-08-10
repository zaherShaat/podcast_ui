import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class SearchFormField extends StatefulWidget {
  const SearchFormField({super.key, required this.enabled});
  final bool enabled;

  @override
  State<SearchFormField> createState() => _SearchFormFieldState();
}

class _SearchFormFieldState extends State<SearchFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: deluge,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(6),
        ),
        contentPadding: const EdgeInsets.all(18),
        filled: true,
        enabled: widget.enabled,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(24),
        ),
        errorBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: const Color.fromRGBO(29, 25, 44, 1),
        hintText: "Search here...",
        // labelText: "Search",
        hintStyle: const TextStyle(
          color: deluge,
          fontFamily: circularStdFamily,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          // height: 14,
        ),
      ),
      style: const TextStyle(
        color: deluge,
        fontFamily: circularStdFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        // height: 14,
      ),
    );
  }
}
