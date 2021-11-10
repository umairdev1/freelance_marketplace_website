import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:freelance_marketplace_website/model/product_model.dart';
import 'package:freelance_marketplace_website/model/responsive.dart';
import 'package:freelance_marketplace_website/screens/components/sidebar.dart';

import '../../constants.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //now we create model of our posts

//we are using gridview inside column thats why we are using shrinkwrap true and scroll physics
          //gridview size is increasing or decreasing according to screen size we need to fix this
          // the best solution use staggered widget

          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 2,
            itemCount: products.length,
            itemBuilder: (context, index) => Products(
              product: products[index],
            ),
            staggeredTileBuilder: (index) =>
                MediaQuery.of(context).size.width >= 530
                    ? StaggeredTile.fit(1)
                    : StaggeredTile.fit(2),
          ),
          // you can see its working
          const SizedBox(
            height: 30,
          ),
          if (!Responsive.isDesktop(context)) SideBar()
        ],
      ),
    );
  }
}

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: List.generate(
                  product.category.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: categoryList(index),
                      )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.title,
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              product.desc,
              style: const TextStyle(
                height: 1.3,
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container categoryList(int index) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: kcateColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        product.category[index],
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
