import 'package:flutter/material.dart';

class DropdownButtonWidget<T> extends StatefulWidget {
  const DropdownButtonWidget({Key? key, this.value, required this.items, required this.onChanged}) : super(key: key);
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;

  @override
  State<DropdownButtonWidget<T>> createState() => _DropdownButtonWidgetState<T>();
}

class _DropdownButtonWidgetState<T> extends State<DropdownButtonWidget<T>> {
  late T? index;

  @override
  void initState() {
    super.initState();
    index = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: index,
      items: widget.items,
      onChanged: (T? value) {
        widget.onChanged.call(value);
        setState(() {
          index = value;
        });
      },
    );
  }
}
