import 'package:chatgptapp/constant%20/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.controller, this.onPressed, required this.formKey}) : super(key: key);
  final TextEditingController controller;
  final void Function(String)? onPressed;
  final GlobalKey<FormState> formKey ;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty || value.length < 5) {
            return BaseConstant.validateMessage;
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if(formKey.currentState!.validate()) {
            onPressed?.call(value);
          }
        },
        controller: controller,
        decoration: InputDecoration(
          hintText: HomePageConstant.ask,
          suffixIcon: IconButton(onPressed:(){
            if(formKey.currentState!.validate()) {
              onPressed?.call(controller.text);
            }
          } , icon: const Icon(Icons.send)),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
