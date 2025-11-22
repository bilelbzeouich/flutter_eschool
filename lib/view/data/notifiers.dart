import 'package:flutter/material.dart';

final selectedIndexNotifier = ValueNotifier<int>(0);

final brightnessNotifier = ValueNotifier<bool>(
  true,
); // true = dark mode, false = light mode
