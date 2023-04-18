import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({Key? key, required this.isAssistant, required this.content}) : super(key: key);

  final bool isAssistant;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: isAssistant ? const Icon(Icons.assistant) : null,
        trailing: isAssistant ? null : const Icon(Icons.person),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            content.trim(),
            textAlign: isAssistant ? TextAlign.left : TextAlign.right,
          ),
        ),
      ),
    );
  }
}
