import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<String> imgList = [
    'assets/images/air-jordan.png',
    'assets/images/j1_cactus.png',
    'assets/images/cactus.png',
  ];
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                current_index = value;
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.asset(
                imgList[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DotsIndicator(
          dotsCount: 3,
          position: current_index,
          decorator: DotsDecorator(
            activeColor: const Color(0xff267C9D),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}
