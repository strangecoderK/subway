import 'package:flutter/material.dart';
import 'package:subway/ui/color_styles.dart';

import '../../ui/text_styles.dart';

class Search extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final void Function(String)? function;

  const Search({
    super.key,
    required this.hintText,
    this.controller,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: function,
      controller: controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorStyles.gray4),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorStyles.primary80),
          ),
          hintText: hintText,
          prefixIcon: const Icon(
            Icons.search,
            color: ColorStyles.gray4,
          ),
          hintStyle: TextStyles.smallerTextRegular
              .copyWith(color: ColorStyles.gray4)),
    );
  }
}
