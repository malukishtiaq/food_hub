import 'package:flutter/material.dart';

class FHInput extends StatefulWidget {
  final String hintText;
  final String inputName;
  final bool isPassword;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  const FHInput({
    Key? key,
    required this.inputName,
    required this.hintText,
    this.controller,
    this.validator,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<FHInput> createState() => _FHInputState();
}

class _FHInputState extends State<FHInput> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.inputName,
            style: const TextStyle(
              fontFamily: "Sofia Pro",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff9796a1),
              height: 16 / 16,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: widget.isPassword && _isObscured,
            controller: widget.controller,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _isObscured ? Icons.visibility_off : Icons.visibility,
                        color: const Color(0xFF9796A1),
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    )
                  : null,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.1),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFE724C),
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: widget.hintText,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFE724C),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            validator: widget.validator,
          )
        ],
      ),
    );
  }
}
