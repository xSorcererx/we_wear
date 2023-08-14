// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:wewear/presentation/modules/cart/textstyle.dart';
import 'package:wewear/presentation/modules/product/widget/custom-elevetedBtn.dart';

import '../product/product-screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2E2),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Cart',
                    style: textstyle(30, Colors.black, FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      // height: 200,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductScreen(),
                                  ));
                            },
                            contentPadding: EdgeInsets.zero,
                            leading: SizedBox(
                              width: 100,
                              height: 100,
                              child:
                                  Image.asset('assets/images/air-jordan.png'),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Air Jordan',
                                  style: textstyle(
                                      18, Colors.black, FontWeight.bold),
                                ),
                                Text(
                                  'NIKE',
                                  style: textstyle(
                                      14, Colors.grey, FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Rs 2000',
                              style:
                                  textstyle(16, Colors.black, FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            // bottom: 0,
                            // top: 0,
                            // bottom: 0,
                            child: SizedBox(
                              height: 150,
                              child: CartQuantityControls(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20,
              bottom: 10,
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomElevetedBtn(onPressed: () {}, text: "Proceed"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartQuantityControls extends StatefulWidget {
  @override
  _CartQuantityControlsState createState() => _CartQuantityControlsState();
}

class _CartQuantityControlsState extends State<CartQuantityControls> {
  int quantity = 1;
  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: _incrementQuantity,
          icon: Icon(CupertinoIcons.plus_rectangle_fill),
          color: Color(0xff267C9D),
          iconSize: 22,
        ),
        Text(
          '$quantity', // Display current quantity
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        IconButton(
          onPressed: _decrementQuantity,
          icon: Icon(CupertinoIcons.minus_rectangle_fill),
          iconSize: 22,
          color: Colors.grey,
        ),
      ],
    );
  }
}
