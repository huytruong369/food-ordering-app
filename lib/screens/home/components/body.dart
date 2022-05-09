import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/search_box.dart';
import 'package:food_ordering_app/screens/home/components/category_list.dart';
import 'package:food_ordering_app/screens/home/components/discount_card.dart';
import 'package:food_ordering_app/screens/home/components/item_card_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(onChanged: (value) {}),
        const CategoryList(),
        const ItemCardList(),
        const DiscountCard(),
      ],
    );
  }
}
