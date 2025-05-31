import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> productNames = [
    'Cappuccino',
    'Machiato',
    'Latte',
    'Americano',
    'Espresso',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: ColorsManager.backgroundTextColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 84,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(
                                    color: ColorsManager.bgrayTextColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      "Bilzen,Tanjungbalai",
                                      style: TextStyle(
                                        color: ColorsManager.bgrayTextColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Spacer(),

                            Image.asset(
                              "assets/images/pic.png",
                              fit: BoxFit.cover,
                              width: 44,
                              height: 44,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 28),

                      Container(
                        width: 350,
                        height: 52,
                        decoration: BoxDecoration(
                          color: ColorsManager.searchTextColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: Colors.white),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                    color: ColorsManager.whiteTextColor,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Search coffee",
                                    hintStyle: TextStyle(
                                      color: ColorsManager.grayTextColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.tune, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: ColorsManager.whiteTextColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 110),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: productNames.length,
                          itemBuilder: (context, index) {
                            final isSelected = index == selectedIndex;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 32,
                                margin:  EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                padding:  EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? ColorsManager.goldtrTextColor
                                          : ColorsManager.lightgrayTextColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    productNames[index],
                                    style: TextStyle(
                                      color:
                                          isSelected
                                              ? ColorsManager.whiteTextColor
                                              : ColorsManager.blackTextColor,
                                      fontWeight:
                                          isSelected
                                              ? FontWeight.w600
                                              : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17),
            ],
          ),

          Positioned(
            left: 50,
            top: 255,

            child: Image.asset(
              "assets/images/banner.png",
              width: 315,
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}
