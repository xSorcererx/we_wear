import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wewear/presentation/modules/cart/textstyle.dart';
import 'package:wewear/presentation/modules/product/provider/size-provider.dart';

class ShoeSizeWidget extends StatelessWidget {
  const ShoeSizeWidget({
    super.key,
    required this.size,
  });

  final List<String> size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Consumer(builder: (context, ref, child) {
        final sizeIndex = ref.watch(sizeProvider);

        return ListView.builder(
          shrinkWrap: true,
          itemCount: size.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 0 : 15,
                top: 6,
              ),
              child: InkWell(
                onTap: () {
                  ref.watch(sizeProvider.notifier).update((state) => index);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: sizeIndex == index
                        ? Color(0xff267C9D)
                        : Color(0xff267C9D).withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    size[index],
                    style: textstyle(
                        14,
                        sizeIndex == index ? Colors.white : Colors.black54,
                        FontWeight.w600),
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
