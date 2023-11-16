import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var maskFormatter = MaskTextInputFormatter(
  mask: 'xxx.xxx.xxx',
  filter: {"x": RegExp(r'[0-9]')},
);
