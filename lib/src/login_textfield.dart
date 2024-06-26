// import 'package:custom_filled_button_package/custom_filled_button_package.dart';
import 'package:flutter/material.dart';


class LoginTextfield extends StatelessWidget {
  const LoginTextfield(
      {super.key,
      this.headerName,
      this.headerfontSized,
      this.headerfontWeight,
      this.headercolor,
      this.headerbackgroundcolor,
      this.headerfontStyle,
      this.headeroverflow,
      this.headerwordSpacing,
      this.headerheight,
      this.headerdecoration,
      this.controller,
      this.prefixIcon,
      this.hintText,
      this.suffixIcon,
      this.suffixText,
      this.prefix,
      this.label,
      this.helperText,
      this.focusColor,
      this.hintMaxLines,
      this.helper,
      this.errorStyle,
      this.errorText,
      this.errorBorder,
      this.error,
      this.enabledBorder,
      this.disabledBorder,
      this.contentPadding,
      this.filled,
      this.fillColor,
      this.hintStyle,
      this.border, this.onPressed});

  final String? headerName;
  final double? headerfontSized;
  final FontWeight? headerfontWeight;
  final Color? headercolor;
  final Color? headerbackgroundcolor;
  final FontStyle? headerfontStyle;
  final TextOverflow? headeroverflow;
  final double? headerwordSpacing;
  final double? headerheight;
  final TextDecoration? headerdecoration;

  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? suffixIcon;
  final String? suffixText;
  final Widget? prefix;
  final Widget? label;
  final String? helperText;
  final Color? focusColor;
  final int? hintMaxLines;
  final Widget? helper;
  final TextStyle? errorStyle;
  final String? errorText;
  final InputBorder? errorBorder;
  final Widget? error;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final bool enabled = true;
  final EdgeInsetsGeometry? contentPadding;
  final bool? filled;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final InputBorder? border;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [  
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8),
          child: Text(
            headerName ?? "",
            style: TextStyle(
              fontSize: headerfontSized ?? 20,
              fontWeight: headerfontWeight ?? FontWeight.bold,
              color: headercolor ?? Colors.black,
              backgroundColor: headerbackgroundcolor,
              fontStyle: headerfontStyle,
              overflow: headeroverflow,
              wordSpacing: headerwordSpacing,
              height: headerheight,
              decoration: headerdecoration,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              prefix: prefix,
              suffixText: suffixText,
              suffixIcon: suffixIcon,
              hintText: hintText,
              label: label,
              border: border ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Colors.grey)),
              hintStyle: hintStyle,
              fillColor: fillColor ?? Colors.grey.withOpacity(0.3),
              filled: filled ?? true,
              contentPadding: contentPadding ?? const EdgeInsets.all(10),
              enabled: enabled,
              disabledBorder: disabledBorder,
              enabledBorder: enabledBorder,
              error: error,
              errorBorder: errorBorder,
              errorText: errorText,
              errorStyle: errorStyle,
              helper: helper,
              hintMaxLines: hintMaxLines,
              focusColor: focusColor,
              helperText: helperText,
            ),
          ),
        ),



      ],
    );
  }
}
