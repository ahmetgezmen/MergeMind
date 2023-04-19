import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldForDalee extends StatelessWidget {
  const CustomTextFormFieldForDalee({
    Key? key,
    required this.onPressed,
    required this.controller,
    this.isSendButtonVisible = true,
    required this.text,
    this.inputFormatters, this.onChanged, this.validator,
  }) : super(key: key);
  final Function(String) onPressed;
  final ValueChanged<String>? onChanged;
  final TextEditingController controller;
  final bool isSendButtonVisible;
  final String text;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      validator: validator,
      onChanged: (value) {
          onChanged?.call(value);

      },
      inputFormatters: inputFormatters,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isSendButtonVisible
            ? IconButton(
                onPressed: () {
                  onPressed.call(controller.text);
                },
                icon: const Icon(Icons.send),
              )
            : null,
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ).p8;
  }
}
