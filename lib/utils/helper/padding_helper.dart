import 'package:flutter/cupertino.dart';

extension PaddingForWidget on Widget{

  Widget get p8 => Padding(
    padding: const EdgeInsets.all(8.0),
    child: this,
  );
  Widget get p16 => Padding(
    padding: const EdgeInsets.all(16.0),
    child: this,
  );
  Widget get p32 => Padding(
    padding: const EdgeInsets.all(32.0),
    child: this,
  );
  Widget get p64 => Padding(
    padding: const EdgeInsets.all(64.0),
    child: this,
  );

  Widget get p8H => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: this,
  );
  Widget get p16H => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: this,
  );
  Widget get p32H => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32.0),
    child: this,
  );
  Widget get p64H => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 64.0),
    child: this,
  );

  Widget get p8V => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: this,
  );
  Widget get p16V => Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: this,
  );
  Widget get p32V => Padding(
    padding: const EdgeInsets.symmetric(vertical: 32.0),
    child: this,
  );
  Widget get p64V => Padding(
    padding: const EdgeInsets.symmetric(vertical: 64.0),
    child: this,
  );

  Widget get p8T => Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: this,
  );
  Widget get p16T => Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: this,
  );
  Widget get p32T => Padding(
    padding: const EdgeInsets.only(top: 32.0),
    child: this,
  );
  Widget get p64T => Padding(
    padding: const EdgeInsets.only(top: 64.0),
    child: this,
  );

  Widget get p8B => Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: this,
  );
  Widget get p16B => Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: this,
  );
  Widget get p32B => Padding(
    padding: const EdgeInsets.only(bottom: 32.0),
    child: this,
  );
  Widget get p64B => Padding(
    padding: const EdgeInsets.only(bottom: 64.0),
    child: this,
  );

  Widget get p8L => Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: this,
  );
  Widget get p16L => Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: this,
  );
  Widget get p32L => Padding(
    padding: const EdgeInsets.only(left: 32.0),
    child: this,
  );
  Widget get p64L => Padding(
    padding: const EdgeInsets.only(left: 64.0),
    child: this,
  );

  Widget get p8R => Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: this,
  );
  Widget get p16R => Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: this,
  );
  Widget get p32R => Padding(
    padding: const EdgeInsets.only(right: 32.0),
    child: this,
  );
  Widget get p64R => Padding(
    padding: const EdgeInsets.only(right: 64.0),
    child: this,
  );




}