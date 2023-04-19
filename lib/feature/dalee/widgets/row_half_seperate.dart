import 'package:flutter/material.dart';

class RowHalfSeperate extends StatelessWidget {
  const RowHalfSeperate({Key? key, required this.left, required this.right, this.isCenter = false}) : super(key: key);
  final Widget left;
  final Widget right;
  final bool isCenter;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: left,
        ),
        Expanded(
          flex: 1,
          child: right,
        ),
      ],
    );
  }
}
