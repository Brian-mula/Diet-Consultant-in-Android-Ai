import 'package:flutter/material.dart';

const TextInputDecoration = InputDecoration(
  fillColor: Colors.greenAccent,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2),
  ),
);
