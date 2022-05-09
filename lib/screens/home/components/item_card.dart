import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgScr;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgScr,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFFB0CCE1).withOpacity(.32),
          ),
        ],
        color: Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.13),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgScr,
                    width: size.width * .18,
                  ),
                ),
                Text(title),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  shopName,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
