import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wewear/presentation/modules/cart/textstyle.dart';
import 'package:wewear/presentation/modules/product/product-screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2E2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Favourite Shoes',
                  style: textstyle(30, Colors.black, FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 11,
                  itemBuilder: (context, index) => Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: MediaQuery.of(context).size.width,
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
                    child: ListTile(
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
                        child: Image.asset('assets/images/air-jordan.png'),
                      ),  
      
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Air Jordan',
                            style: textstyle(18, Colors.black, FontWeight.bold),
                          ),
                          Text(
                            'NIKE',
                            style: textstyle(14, Colors.grey, FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Rs 2000',
                        style: textstyle(16, Colors.black, FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.heart_fill,
                          color: Color(0xff267C9D),
                        ),
                      ),
                    ),
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
