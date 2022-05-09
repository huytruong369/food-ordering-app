import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ordering_app/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        'assets/icons/menu.svg',
      ),
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
        children: const [
          TextSpan(
            text: 'Punk',
            style: TextStyle(
              color: ksecondaryColor,
            ),
          ),
          TextSpan(
            text: 'Food',
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/notification.svg'),
      ),
    ],
  );
}
