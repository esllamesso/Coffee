import 'package:flutter/material.dart';
import 'package:flutterfirst/order_screen.dart';

import '../core/colors_manager.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({super.key});

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  String selectedSize = 'M';

  final Map<String, double> sizePrices = {
    'S': 3.99,
    'M': 4.53,
    'L': 5.53,
  };

  @override
  Widget build(BuildContext context) {

    double currentPrice = sizePrices[selectedSize]!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsManager.blackTextColor,
                ),
              ),

              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    ['S', 'M', 'L'].map((size) {
                      bool isSelected = selectedSize == size;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = size;
                          });
                        },
                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? ColorsManager.lightTextColor
                                    : ColorsManager.whiteTextColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color:
                                  isSelected
                                      ? ColorsManager.lightTextColor
                                      : ColorsManager.grayTextColor,
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              size,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:
                                    isSelected
                                        ? ColorsManager.goldTextColor
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            border: Border.all(color: ColorsManager.grayTextColor, width: 1),

          ),

          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        color: ColorsManager.grayTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 3),

                    Text(
                      "\$ ${currentPrice.toStringAsFixed(2)}",
                      style: TextStyle(
                        color: ColorsManager.goldTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Spacer(),

                Material(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorsManager.lightTextColor,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context)=>OrderScreen(

                          productName: "Cappucino", price: currentPrice,
                      )));

                    },

                    child: Container(
                      width: 217,
                      height: 55,
                      decoration: BoxDecoration(
                        color: ColorsManager.goldTextColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: ColorsManager.whiteTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
