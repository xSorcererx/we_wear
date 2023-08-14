import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wewear/presentation/modules/cart/textstyle.dart';
import 'package:wewear/presentation/modules/product/widget/custom-elevetedBtn.dart';
import 'package:wewear/presentation/modules/product/widget/image-silder.dart';
import 'package:wewear/presentation/modules/product/widget/shoe-size.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> size = [
    '5.0',
    '5.5',
    '6.0',
    '6.5',
    '7.0',
    '7.5',
    '8.0',
    '8.5',
    '9.0',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE2E2E2),
      appBar: AppBar(
        backgroundColor: const Color(0xffE2E2E2),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.heart,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Custom image sliders that display the shoe image
              const ImageSlider(),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 30,
                        spreadRadius: 5,
                        // offset: Offset(0, 0),
                      )
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Air Jordan 1',
                        style: textstyle(32, Colors.black, FontWeight.w700),
                      ),
                      Text(
                        'NIKE',
                        style: textstyle(18, Colors.black45, FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rs. 1800',
                            style: textstyle(22, Colors.black, FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                'Colors:',
                                style: textstyle(
                                    18, Colors.black45, FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 18,
                                width: 18,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 18,
                                width: 18,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Select size',
                        style: textstyle(18, Colors.black, FontWeight.w600),
                      ),
                      ShoeSizeWidget(size: size),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.2),
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'First Eddison of shoe of NIKE Brand offical .',
                        maxLines: 2,
                        style: textstyle(20, Colors.black, FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'First Eddison of shoe of NIKE Brand offical. numnber 1 trending shoe originaly made in china.',
                        maxLines: 2,
                        style: textstyle(14, Colors.grey, FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: CustomElevetedBtn(
                          text: "Add to cart",
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
