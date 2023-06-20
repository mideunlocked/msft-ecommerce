import 'package:flutter/material.dart';

import '../general_widget/back_button.dart';
import '../product_tile/product_tile_image.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomBackButton(),
        ProductFavouriteWidget(
          isFavourite: false,
          function: () {},
        )
      ],
    );
  }
}
