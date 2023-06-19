import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProuctTileImage extends StatefulWidget {
  const ProuctTileImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  State<ProuctTileImage> createState() => _ProuctTileImageState();
}

class _ProuctTileImageState extends State<ProuctTileImage> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Image.asset(
            widget.imageUrl,
            height: 25.h,
            width: 100.w,
            fit: BoxFit.fitWidth,
          ),
        ),
        ProductFavouriteWidget(
          isFavourite: isFavourite,
          function: () => toggleFavourite(),
        ),
      ],
    );
  }

  void toggleFavourite() {
    setState(() {
      isFavourite = !isFavourite;
    });
  }
}

class ProductFavouriteWidget extends StatelessWidget {
  const ProductFavouriteWidget({
    super.key,
    required this.isFavourite,
    required this.function,
    this.color = Colors.white,
  });

  final Color color;
  final bool isFavourite;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 10.sp,
          top: 10.sp,
        ),
        padding: const EdgeInsets.all(
          8.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.black12,
          shape: BoxShape.circle,
        ),
        child: Icon(
          isFavourite == true
              ? Icons.favorite_rounded
              : Icons.favorite_outline_rounded,
          color: isFavourite == true ? Colors.red : color,
        ),
      ),
    );
  }
}
