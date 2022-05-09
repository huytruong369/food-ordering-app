import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home/components/app_bar.dart';
import 'package:food_ordering_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: Container(
        height: size.height * 0.075,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -7),
              blurRadius: 33,
              color: const Color(0xFF6DAED9).withOpacity(.11),
            ),
          ],
        ),
        child: Row(
          children: [
            ///TODO: Here bottom app Bar
          ],
        ),
      ),
      body: const Body(),
    );
  }
}
