import 'package:msft/models/product.dart';

List<Product> products = const [
  Product(
    id: "1",
    name: "Nike Air Force 1 Low '07",
    rating: 3.5,
    subName: "White",
    imageUrl: [
      "https://images.pexels.com/photos/12611630/pexels-photo-12611630.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/12611637/pexels-photo-12611637.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/15435913/pexels-photo-15435913/free-photo-of-person-wearing-white-sneakers.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    ],
    saleCount: "500",
    description:
        """The Nike Air Force 1 Low White ‘07 features an all-white leather upper with a perforated toe box and Swoosh overlays. A Nike heel embroidery and white sole completes the design.
filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
The Nike Air Force 1 Low White ‘07 originally released in 2007, but since it is an essential colorway to the brand, it consistently restocks.""",
    sizes: ["38", "39", "40", "41", "42", "43", "44", "45"],
    categoryId: "1",
    productDetails: {
      "Brand": "Nike",
      "Style": "315122-111/CW2288-111",
      "Colorway": "WHITE/WHITE",
      "Retail Price": "110",
      "Release Date": "11/24/2007",
      "Included Accessories": "2X AF1 BRANDED LACE"
    },
  ),
  Product(
    id: "2",
    name: "Supreme Kurt Cobain Sweater",
    rating: 4.5,
    subName: "White",
    imageUrl: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZmZsurXG6iosEF-4BONerPw-badLA3fwYbQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr7C6ft4UuKZtbvcvZ7ABU2s1hFqL-trpi4w&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaRJN6HP90iqeOARKtUNtkftOGqsLduYNwOA&usqp=CAU",
    ],
    saleCount: "51",
    description:
        """The Supreme tops-sweater Kurt Cobain Sweater (SS23) released for a price of \$188. All cotton with printed graphic on front. Its most recent seller, Garrett Kletjian — who is a diehard Cobain fan — bought the sweater in November 2015 for just over \$180,000, according to Rolling Stone — meaning he profited more than 100 per cent from the investment.""",
    sizes: ["S", "M", "L", "XL", "XXL"],
    categoryId: "1",
    productDetails: {
      "Season": "SS23",
      "Color": "WHITE",
      "Release Date": "06/01/2023",
      "Retail Price": "188",
    },
  ),
  Product(
    id: "3",
    name: "Christian Dior x Pop Smoke limited",
    rating: 5,
    subName: "Long live Pop",
    imageUrl: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZRHmBem35m07rkfv7udkzBQskD3MnSPkhPg&usqp=CAU",
    ],
    saleCount: "5",
    description: """""",
    sizes: ["S", "M", "L", "XL", "XXL"],
    categoryId: "1",
    productDetails: {
      "Season": "SS21",
      "Color": "Blue/Black",
      "Release Date": "06/01/2023",
      "Retail Price": "250",
    },
  ),
  Product(
    id: "4",
    name: "Nike Sportswear Tech Fleece Full Zip Hoodie & Joggers Set",
    rating: 5,
    subName: "Grey",
    imageUrl: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlZ5g3P927RJ9RJc_fPKI4O9h4rVmAPpF_Cw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcLG6pk7YeJjyZfzEp2IYoJoF5TFOOeqyG-A&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxvqDih0372smQ2-X2saLtclNnv0FPBbuyPQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREfM8-8HNnuTUedieEqWgwMR_PIp93HaWxaw&usqp=CAU",
    ],
    saleCount: "600",
    description:
        """The Nike Tech Fleece Full Zip Hoodie Joggers Set Black is made of a tri-layer material and is available in a black colorway.

This set includes a classic Tech Fleece hoodie and jogger pants. The tri-layer fabric comprises a brushed inside lining material, a posh foam in the middle and a jersey on the outside. Apart from that, the hoodie is fully zipped and comes with a zipper pocket on the left arm. The jogger pants are branded with Nike’s brand name and a Swoosh below it. Further, the pants feature a drawstring cord for adjustment.

The Nike Tech Fleece Full Zip Hoodie Joggers Set Black debuted on January 15th, 2022 and retailed for \$240.""",
    sizes: ["S", "M", "L", "XL", "XXL"],
    categoryId: "1",
    productDetails: {
      "Color": "BLACK",
      "Style": "CU4489-010 / CU4495-010",
      "Retail Price": "240",
    },
  ),
  Product(
    id: "5",
    name: "COLLUSION Unisex open weave festival glitter beanie in purple",
    rating: 3,
    subName: "Purple",
    imageUrl: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi-imoXDDk5kfgbHRQOVBKUWUEkw9sOobxJw&usqp=CAU",
    ],
    saleCount: "50",
    description:
        """A new brand for the coming-of-age generation that refuses to compromise on principle or style, Collusion believes clothes that celebrate self-expression and inclusivity should be the norm. It’s no surprise then that it’s linked up with six inspirational creatives to shape its first collection, which includes denim, knitwear, dresses and loads more.""",
    sizes: ["S", "M", "L"],
    categoryId: "1",
    productDetails: {
      "Color": "Purple",
      "Via": "Exclusive to ASOS",
      "Detailing": "Metallic finish",
      "Style": "Domed crown",
      "Retail Price": "100",
      "Sex": "Unisex style",
    },
  ),
  Product(
    id: "6",
    name: "KAWS Holiday Japan Vinyl Figure",
    rating: 5,
    subName: "Brown",
    imageUrl: [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV96tl78E4H4nWmrRLSAk3yTQJ9PwQDtLPOQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTasc7RgMipiWxUuc8uTA-RykuINGPL8Dvv1OxHe1lQ0AP6y87eCqGnN12fjoYJEZwrclw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkqT8SAqpnJi1OnXMK1fDz6ufNnrS60uPYpQ&usqp=CAU",
    ],
    saleCount: "15",
    description:
        """After releasing his final collaborative apparel collection with Uniqlo's UT line in June of 2019, KAWS returned just over one month later for the Japan installment of his KAWS Holiday series. The event and collection took to the theme of Mt. Fuji, staging campsites in Japan and releasing an array of Holiday and Mt. Fuji inspired collectibles. Released as a part of the event was the latest installment of KAWS Vinyl figures depicting a companion laying on the ground in what looks to be a very relaxing position. The KAWS HOLIDAY JAPAN Vinyl Figure released on July 18th, 2019 and retailed for \$200 USD.""",
    sizes: ["9.5 inch"],
    categoryId: "1",
    productDetails: {
      "Color": "BROWN",
      "Release Date": "07/18/2019",
      "Retail Price": "200",
      "Dimensions": "4 X 9.5 X 3.5 IN"
    },
  ),
];
