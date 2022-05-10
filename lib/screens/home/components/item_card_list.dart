import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/details/detail-screen.dart';
import 'package:food_ordering_app/screens/home/components/item_card.dart';

class ItemCardList extends StatelessWidget {
  const ItemCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailsScreen();
                  },
                ),
              );
            },
            shopName: "MacDonald's",
            svgScr: 'assets/icons/burger_beer.svg',
            title: 'Burger & Beer',
          ),
          ItemCard(
            press: () {},
            shopName: "Wendys",
            svgScr: 'assets/icons/chinese_noodles.svg',
            title: 'Chinese & Noodles',
          ),
          ItemCard(
            press: () {},
            shopName: "MacDonald's",
            svgScr: 'assets/icons/burger_beer.svg',
            title: 'Burger & Beer',
          ),
        ],
      ),
    );
  }
}
