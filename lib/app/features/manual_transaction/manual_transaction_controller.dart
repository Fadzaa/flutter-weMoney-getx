import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManualTransactionController extends GetxController {
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    focusNode.dispose();
    super.dispose();
  }
}