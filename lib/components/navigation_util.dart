import 'package:flutter/material.dart';

void redirectTo(BuildContext context, Widget designation) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => designation),
    );
  }