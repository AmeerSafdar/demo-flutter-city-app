import 'package:flutter/material.dart';

import '../constants/const.dart';

extension SnackbarExtension on BuildContext {
  void showSnackbar() {
    ScaffoldMessenger.of(this).showSnackBar(const SnackBar(
      content: Text(ERROR_Text),
    ));
  }
}
