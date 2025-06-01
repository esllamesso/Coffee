import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';

class HeaderWidgetOrder extends StatefulWidget {
  final String title;
  final VoidCallback? onBack;

  const HeaderWidgetOrder({
    super.key,
    required this.title,
    this.onBack,
  });

  @override
  State<HeaderWidgetOrder> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidgetOrder> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed:
          widget.onBack ?? () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, size: 24),
        ),
        SizedBox(width: 120,),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorsManager.blackTextColor,

          ),
        ),
      ],
    );
  }
}
