import 'package:flutter/material.dart';

Widget customContainer({required Widget child}) => Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 3),
              blurRadius: 2.5,
              spreadRadius: 0.1,
            )
          ]),
      child: child,
    );
