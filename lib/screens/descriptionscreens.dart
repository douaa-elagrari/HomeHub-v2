import 'package:flutter/material.dart';
import '../data/product.dart';
import 'package:homehub_v2/widgets/colorschangingrow.dart';
import 'package:homehub_v2/widgets/descriptiontext.dart';
import 'package:homehub_v2/widgets/priceandbuy.dart';
import 'package:homehub_v2/widgets/productinfocontainer.dart';

class ProductLayout extends StatefulWidget {
  final int productId;

  const ProductLayout({super.key, required this.productId});

  @override
  State<ProductLayout> createState() => _ProductLayoutState();
}

class _ProductLayoutState extends State<ProductLayout> {
  final ScrollController _scrollController = ScrollController();
  double scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere((p) => p.id == widget.productId);
    final double imageHeight = MediaQuery.of(context).size.height * 0.45;
    final double translateY = (-scrollOffset * 0.3).clamp(-80, 0);
    final double scale = (1 - scrollOffset / 800).clamp(0.9, 1.0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ======== IMAGE FROM ASSETS ========
          Transform.translate(
            offset: Offset(0, translateY),
            child: Transform.scale(
              scale: scale,
              child: Image.asset(
                product.imageUrl,
                height: imageHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ======== SCROLLABLE CONTENT ========
          SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: imageHeight - 30),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, -3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Descriptiontext(
                        descriptionTitle: product.name,
                        descriptionParag: product.description,
                      ),
                      const SizedBox(height: 20),
                      Colorschangingrow(colors: product.availableColors),
                      const SizedBox(height: 30),

                      // ======== INFO CONTAINERS ========
                      Productinfocontainer(
                        infotitle: 'Category',
                        information: product.category,
                      ),
                      Productinfocontainer(
                        infotitle: 'Price (DA)',
                        information: product.price.toStringAsFixed(0),
                      ),
                      Productinfocontainer(
                        infotitle: 'ID',
                        information: product.id.toString(),
                      ),

                      const SizedBox(height: 40),
                      Priceandbuy(price: product.price, productdesc: 'Price'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ======== BACK BUTTON ========
          Positioned(
            top: 40,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.black.withValues(alpha: 0.4),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* this is the code for the product description screen, we used a stack to position the
image under the container, then we completed the work using the widgets that we predefined
previously*/
