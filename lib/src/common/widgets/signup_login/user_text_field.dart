import 'package:e_commerce_1/src/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UserTextField extends StatefulWidget {
  const UserTextField(
      {super.key,
      required this.heading,
      required this.obsecure,
      required this.suffixIcon,
      required this.isPasword,
      required this.label,
      required this.hint});
  final String heading;
  final bool obsecure;
  final IconData suffixIcon;
  final bool isPasword;
  final String label;
  final String hint;
  @override
  State<UserTextField> createState() => _UserTextFieldState();
}

class _UserTextFieldState extends State<UserTextField> {
  late bool isFocused = false;
  late bool obsecure;
  @override
  void initState() {
    obsecure = widget.obsecure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.heading,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: obsecure,
          decoration: InputDecoration(
              prefixIcon: Icon(widget.suffixIcon),
              suffixIcon: widget.isPasword
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          obsecure = !obsecure;
                        });
                      },
                      child: Icon(
                          obsecure ? Icons.visibility : Icons.visibility_off),
                    )
                  : null,
              label: Text(
                widget.label,
              ),
              hintText: widget.hint,
              hintStyle: const TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black45)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 2, color: AppColors.primary))),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
