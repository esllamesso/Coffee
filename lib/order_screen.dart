import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';
import 'package:flutterfirst/details_screen.dart';
import 'package:flutterfirst/widgets/header_widget_order.dart';

class OrderScreen extends StatefulWidget {
  final String productName;
  final double price;

  const OrderScreen({
    super.key,
    required this.productName,
    required this.price,
  });

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String orderTypeText =
      "Delivery Address Jl. Kpg Sutoyo Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.";
  String selectedOption = "Deliver";
  int _quantity = 1;

  double deliveryFee = 2.00;
  double deliveryDiscount = 1.00;
  double totalPrice = 0.0;

  void calculateTotal() {
    double itemTotal = widget.price * _quantity;
    totalPrice = itemTotal + (deliveryFee - deliveryDiscount);
  }

  @override
  void initState() {
    super.initState();
    calculateTotal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: HeaderWidgetOrder(
              title: "Order",
              onBack: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 26),
                  Container(
                    width: 321,
                    height: 48,
                    decoration: BoxDecoration(
                      color: ColorsManager.lightgrayTextColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedOption = "Deliver";
                                orderTypeText =
                                    "Delivery Address Jl. Kpg Sutoyo Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.";
                              });
                            },
                            child: Container(
                              width: 154,
                              height: 40,
                              decoration: BoxDecoration(
                                color:
                                    selectedOption == "Deliver"
                                        ? ColorsManager.goldtrTextColor
                                        : ColorsManager.lightgrayTextColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Deliver",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        selectedOption == "Deliver"
                                            ? ColorsManager.whiteTextColor
                                            : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedOption = "Pick Up";
                                orderTypeText =
                                    "Pick Up it is! We’ll have your order ready when you arrive.";
                              });
                            },
                            child: Container(
                              width: 154,
                              height: 40,
                              decoration: BoxDecoration(
                                color:
                                    selectedOption == "Pick Up"
                                        ? ColorsManager.goldtrTextColor
                                        : ColorsManager.lightgrayTextColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Pick Up",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        selectedOption == "Pick Up"
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31),
                  if (orderTypeText.contains("Deliver")) ...[
                    Text(
                      "Delivery Address\n",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Jl. Kpg Sutoyo\n",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.\n",
                      style: TextStyle(
                        color: ColorsManager.softgrayTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ] else ...[
                    Text(
                      "Pick Up it is!\n",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "We’ll have your order ready when you arrive.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorsManager.softgrayTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                  SizedBox(height: 20),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(16),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {},
                          child: Container(
                            width: 120,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 14,
                                  color: Colors.grey[800],
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Edit Address",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Material(
                        borderRadius: BorderRadius.circular(16),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {},
                          child: Container(
                            width: 120,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.sticky_note_2_outlined, size: 14),
                                SizedBox(width: 4),
                                Text(
                                  "Add Note",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  Container(
                    color: ColorsManager.lineTextColor,
                    width: 315,
                    height: 4,
                  ),
                  SizedBox(height: 31),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 308,
                        height: 54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/logos/coffeeic.png"),
                            SizedBox(width: 11),
                            Column(
                              children: [
                                Text(
                                  widget.productName,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "with Chocolate",
                                  style: TextStyle(
                                    color: ColorsManager.grayTextColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(width: 41),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_quantity > 1) _quantity--;
                                  calculateTotal();
                                });
                              },
                              icon: Icon(
                                Icons.remove_circle_outline,
                                color: ColorsManager.grayTextColor,
                              ),
                              iconSize: 20,
                            ),
                            Text(
                              "$_quantity",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _quantity++;
                                  calculateTotal();
                                });
                              },
                              icon: Icon(
                                Icons.add_circle_outline,
                                color: ColorsManager.grayTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 21),

                  Container(
                    color: ColorsManager.lineTextColor,
                    width: 315,
                    height: 4,
                  ),
                  SizedBox(height: 31),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 318,
                        height: 51,
                        decoration: BoxDecoration(
                          color: ColorsManager.whiteTextColor,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: ColorsManager.grayTextColor,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 16),
                            Image.asset("assets/logos/dscount.png"),
                            SizedBox(width: 12),

                            Text(
                              "1 Discount is applied",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 26),

                  Text(
                    "Payment Summary",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 9),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 235),

                      Text(
                        "\$${(widget.price * _quantity).toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 14),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Delivery Fee",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 152),

                      Text(
                        "\$2.00",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 8),

                      Text(
                        "\$1.0",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 21),

                  Container(
                    color: ColorsManager.lineTextColor,
                    width: 315,
                    height: 4,
                  ),

                  SizedBox(height: 14),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 172),

                      Text(
                        "\$${totalPrice.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),

          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(color: ColorsManager.grayTextColor, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.money, color: ColorsManager.goldtrTextColor),
                      SizedBox(width: 22),
                      Container(
                        width: 51,
                        height: 24,
                        decoration: BoxDecoration(
                          color: ColorsManager.goldtrTextColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Cash",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: ColorsManager.whiteTextColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "\$${totalPrice.toStringAsFixed(1)}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorsManager.blackTextColor,
                          ),
                        ),
                      ),
                      SizedBox(width: 127),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: ColorsManager.grayTextColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 17),

                  Material(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: 315,
                        height: 55,
                        decoration: BoxDecoration(
                          color: ColorsManager.goldtrTextColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Order",
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
      ),
    );
  }
}


