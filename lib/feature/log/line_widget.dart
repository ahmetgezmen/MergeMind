import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key, required this.text, required this.value, this.is2to3 = false}) : super(key: key);
  final String text;
  final String value;
  final bool is2to3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: is2to3 ? 2 :4,
          child: Text(text),
        ),
        Expanded(
          flex: is2to3 ? 3 :1,
          child: Text(value),
        ),
      ],
    ).wInf;
  }
}

