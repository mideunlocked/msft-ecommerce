import 'package:msft/models/product.dart';

List<Product> products = [
  const Product(
    id: "1",
    name: "Nike Air Force 1 Low '07",
    subName: "White",
    // Photo by HamZa NOUASRIA: https://www.pexels.com/photo/latest-air-nike-snicker-12628402/
    imageUrl: [
      "assets/images/shoes/nike air force 1/nike air 1.jpg",
      "assets/images/shoes/nike air force 1/nike air 2.jpg",
      "assets/images/shoes/nike air force 1/nike air 3.jpg",
    ],
    saleCount: "500",
    description:
        """The Nike Air Force 1 Low White ‘07 features an all-white leather upper with a perforated toe box and Swoosh overlays. A Nike heel embroidery and white sole completes the design.

The Nike Air Force 1 Low White ‘07 originally released in 2007, but since it is an essential colorway to the brand, it consistently restocks.

To shop all Nike Air Force 1 shoes, click here.""",
    brandName: "Nike",
    sizes: ["38", "39", "40", "41", "42", "43", "44", "45"],
    categoryId: "1",
    productDetails: {
      "Style": "315122-111/CW2288-111",
      "Colorway": "WHITE/WHITE",
      "Retail Price": "\$110",
      "Release Date": "11/24/2007",
      "Included Accessories": "2X AF1 BRANDED LACE DUBRAE (ATTACHED)"
    },
  ),
];
