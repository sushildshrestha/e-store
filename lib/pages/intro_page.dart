// ignore_for_file: prefer_const_constructors

import 'package:e_store/components/custom_buttons.dart';
import 'package:e_store/constraints/texts.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.background,
      backgroundColor: Color(0xFFEF0107),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 2,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Image.asset(
                'assets/images/image1.jpeg',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //add a logo for intro page
            Icon(
              Icons.store_rounded,
              size: 95,
              color: Theme.of(context).colorScheme.primary,
            ),

            //Name of the Store
            Text(
              storeName,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              productQuality,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            //welcome text

            //button
            CustomButton(
                onTap: () => Navigator.pushNamed(context, '/store_page'),
                child: Icon(
                  Icons.arrow_forward,
                  size: 35,
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 2,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Image.asset('assets/images/image3.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
