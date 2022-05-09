import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: 'Combo Meal',
            press: () {},
            isActive: true,
          ),
          CategoryItem(
            title: 'Chicken',
            press: () {},
          ),
          CategoryItem(
            title: 'Beverages',
            press: () {},
          ),
          CategoryItem(
            title: 'Snack & Sides',
            press: () {},
          ),
        ],
      ),
    );
  }
}
