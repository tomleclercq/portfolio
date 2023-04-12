import 'package:flutter/material.dart';
import 'package:portfolio/utils/helpers.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField({
    required this.label,
    required this.hint,
    required this.onSaved,
    this.validator,
    this.autoFocus = false,
    this.multiline = false,
    super.key,
  });
  final String label;
  final String hint;
  final bool multiline;
  final bool autoFocus;
  final void Function(String?)? onSaved;
  final String? Function(String? value)? validator;
  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  late ResponsiveDisplay display;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      display = ResponsiveDisplay(context);
    });
  }

  void save(String? value) {
    if (value != null) {
      if (widget.onSaved != null) {
        debugPrint('SAVED ${widget.label}: $value');
        widget.onSaved!(value);
      }
    } else {
      debugPrint('NOTHING TO SAVE');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.multiline ? 220 : 64,
      child: Column(
        //mainAxisSize: widget.multiline ? MainAxisSize.max : MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: CustomStyles.getText(
              widget.label,
              style: CustomStyles.smallBold,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: widget.multiline ? 3 : 1,
            child: TextFormField(
              autofocus: widget.autoFocus,
              validator: widget.validator,
              maxLines: widget.multiline ? 7 : 1,
              onSaved: save,
              onFieldSubmitted: save,
              decoration: InputDecoration(
                filled: true,
                hintText: widget.hint,
                border: InputBorder.none,
                isDense: !widget.multiline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
