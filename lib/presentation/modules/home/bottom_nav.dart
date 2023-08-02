import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wewear/presentation/modules/home/provider/bottom-nav-provider.dart';
import 'package:wewear/presentation/modules/product/product-screen.dart';

class BottomNav extends ConsumerWidget {
  BottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int pageIndex = ref.watch(navProvider);

    List<Widget> pageList = [
      Center(
        child: Text('Page1'),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(),
                ));
          },
          child: Text("product")),
      Center(
        child: Text('Page3'),
      ),
      Center(
        child: Text('Page4'),
      ),
      Center(
        child: Text('Page5'),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffE2E2E2),
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Color(0xff267C9D),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == 0
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: NavItemWidget(
                    icon: pageIndex == 0 ? Icons.home : Icons.home_outlined,
                    onTap: () {
                      ref.watch(navProvider.notifier).update((state) => 0);
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == 1
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: NavItemWidget(
                    icon: Icons.trending_up_outlined,
                    onTap: () {
                      ref.watch(navProvider.notifier).update((state) => 1);
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == 2
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: NavItemWidget(
                    icon: pageIndex == 2
                        ? CupertinoIcons.heart_solid
                        : CupertinoIcons.heart,
                    onTap: () {
                      ref.watch(navProvider.notifier).update((state) => 2);
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == 3
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: NavItemWidget(
                    icon: pageIndex == 3
                        ? CupertinoIcons.cart_fill
                        : CupertinoIcons.cart,
                    onTap: () {
                      ref.watch(navProvider.notifier).update((state) => 3);
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == 4
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: NavItemWidget(
                    icon: pageIndex == 4
                        ? CupertinoIcons.person_fill
                        : CupertinoIcons.person,
                    onTap: () {
                      ref.watch(navProvider.notifier).update((state) => 4);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavItemWidget extends ConsumerWidget {
  const NavItemWidget({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool showSplash = ref.watch(splashProvider);
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
