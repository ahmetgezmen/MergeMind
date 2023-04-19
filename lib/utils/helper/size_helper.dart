


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

  Widget wHalf(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      child: this,
    );
  }

  Widget hHalf(context){
    return SizedBox(
      height: MediaQuery.of(context).size.height/2,
      child: this,
    );
  }

}