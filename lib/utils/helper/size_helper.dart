


import 'package:flutter/widgets.dart';

extension SizeExtensionForWidget on Widget {
  Widget get wInf{
    return SizedBox(
      width: double.infinity,
      child: this,
    );
  }
  Widget get hInf{
    return SizedBox(
      height: double.infinity,
      child: this,
    );
  }
}