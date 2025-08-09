import 'package:flutter/material.dart';

class FailureStateWidget extends StatelessWidget {
  const FailureStateWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
