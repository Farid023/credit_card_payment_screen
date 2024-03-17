import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppMaskFormatter {
  AppMaskFormatter._();

  static MaskTextInputFormatter cardMaskFormatter = MaskTextInputFormatter(
      mask: '####-####-####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  static MaskTextInputFormatter dateMaskFormatter = MaskTextInputFormatter(
    mask: '##/####',
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter cvvMaskFormatter = MaskTextInputFormatter(
    mask: '###',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
}
