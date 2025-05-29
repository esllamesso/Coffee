import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';
import 'package:flutterfirst/widgets/header_widget.dart';
import 'package:flutterfirst/widgets/size_widget.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Column(
      children: [
        SizedBox(height: 40,),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,),
        child: HeaderWidget(title: "Details", isFav: isFav, onBack: (){
          Navigator.pop(context);
        },),
        ),

        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),


                SizedBox(height: 30),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/coffeeDetails.png",
                        width: double.infinity,
                        fit: BoxFit.cover,
                        height: 226,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 12),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cappucino",
                        style: TextStyle(
                          color: ColorsManager.blackTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        "white Chocolate",
                        style: TextStyle(
                          color: ColorsManager.grayTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.star, color: ColorsManager.orangeTextColor),
                          SizedBox(width: 3),

                          Text(
                            "4.8",
                            style: TextStyle(
                              color: ColorsManager.blackTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(width: 3),

                          Text(
                            "200",
                            style: TextStyle(
                              color: ColorsManager.grayTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),

                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: ColorsManager.lightTextColor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Image.asset("assets/logos/bean.png"),
                          ),

                          SizedBox(width: 10),

                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: ColorsManager.lightTextColor,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Image.asset("assets/logos/milk.png"),
                          ),
                        ],
                      ),

                      SizedBox(height: 48),

                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorsManager.blackTextColor,
                        ),
                      ),

                      SizedBox(height: 15),

                      ReadMoreText(
                        "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk, the foam is poured over the espresso. It originated in Italy and is now popular worldwide, known for its rich taste and creamy texture.",
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read More',
                        trimExpandedText: ' Read Less',
                        style: TextStyle(
                          color: ColorsManager.grayTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        moreStyle: TextStyle(
                          color: ColorsManager.goldTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                        lessStyle: TextStyle(
                          color: ColorsManager.goldTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 85),

                    ],
                  ),
                ),
                SizeWidget(),

                SizedBox(height: 12,),


              ],
            ),
          ),
        ),
      ],

    ),


    );
  }
}
