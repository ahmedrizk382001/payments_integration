import 'package:flutter/material.dart';

class CustomDashLine extends StatelessWidget {
  const CustomDashLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 3, right: 3),
            child: Container(
              height: 1,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }
}
