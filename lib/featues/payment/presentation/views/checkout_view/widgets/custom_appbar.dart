import 'package:flutter/material.dart';
import 'package:payments_integration/core/styles/app_text_styles.dart';

AppBar customAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    centerTitle: true,
    title: const Text(
      "My Cart",
      style: AppTextStyles.stylePoppinsMedium20,
    ),
    leading: const Center(
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Color(0xff3B16A7),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 14,
          color: Colors.white,
        ),
      ),
    ),
  );
}
