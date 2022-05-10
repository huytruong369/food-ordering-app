import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/details/components/order_button.dart';
import 'package:food_ordering_app/screens/details/components/title_price_rating.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            shopName(name: "MacDonald's"),
            TitlePriceRating(
              numOfReviews: 36,
              price: 15,
              rating: 5,
              name: 'Cheese Burger',
              onRatingChanged: (double value) {},
            ),
            Text(
              lorem(words: 63, paragraphs: 1),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                height: 1.5,
              ),
            ),
            SizedBox(
              height: size.height * .1,
            ),
            OrderButton(
              press: () {},
            ),
          ],
        ),
      ),
    );
  }

  Row shopName({required String name}) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name),
      ],
    );
  }
}
