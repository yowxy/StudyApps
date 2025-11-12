import 'package:flutter/material.dart';
import 'package:skill_loop/shared/theme.dart';

class CustomDropdown extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final List<String> items;
  final String hintText;
  final Function(String?)? onChanged;

  const CustomDropdown({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.items,
    required this.hintText,
    this.onChanged,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          hint: Text(
            widget.hintText,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semibold
            ),
          ),
          isExpanded: true,
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item, 
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semibold,
              )
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
        ),
      ),
    );
  }
}
