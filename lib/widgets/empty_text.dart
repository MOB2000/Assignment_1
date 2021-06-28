import 'package:flutter/material.dart';

class EmptyText extends StatelessWidget {
  final String label;

  const EmptyText({this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
