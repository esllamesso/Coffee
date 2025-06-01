import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';

class HeaderWidget extends StatefulWidget {
  final String title;
  final bool isFav;
  final VoidCallback? onBack;

  const HeaderWidget({
    super.key,
    required this.title,
    required this.isFav,
    this.onBack,
  });

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool isFav = false;


  @override
  Widget build(BuildContext context) {


      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed:
            widget.onBack ?? () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, size: 24),
        ),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorsManager.blackTextColor,
          ),
        ),
        IconButton(
          onPressed: () {
            isFav = !isFav;
            setState(() {});
          },
          icon: Icon(
            isFav == false ? Icons.favorite_border : Icons.favorite,
            size: 24,
          ),
        ),
      ],
    );
  }
}
