import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/general_widget/back_button.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 3.h,
            left: 5.w,
            right: 5.w,
          ),
          child: Column(
            children: [
              const CheckOutAppBar(),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                // height: 28.h,
                child: ListView(
                  // scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
              ),
              // SizedBox(
              //   child: Row(
              //     children: [
              //       ElevatedButton(
              //         style: ButtonStyle(
              //           backgroundColor: MaterialStatePropertyAll(Colors.black),
              //         ),
              //         onPressed: () {},
              //         child: Padding(
              //           padding: EdgeInsets.symmetric(
              //             vertical: 1.h,
              //             horizontal: 30.w,
              //           ),
              //           child: Text(
              //             "Proceed",
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var color = Colors.white;

    return Container(
      height: 27.h,
      width: 85.w,
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
        horizontal: 7.w,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 1.h,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BankDetails(color: color),
          const ChipImage(),
          SizedBox(
            height: 2.h,
          ),
          const AccountDetails(
            cardNumber: "0000  0000  0000  0000",
            expiryDate: "09 / 24",
            fullName: "John Doe",
            cvv: "345",
          ),
        ],
      ),
    );
  }
}

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    super.key,
    required this.cardNumber,
    required this.expiryDate,
    required this.fullName,
    required this.cvv,
  });

  final String cardNumber;
  final String expiryDate;
  final String fullName;
  final String cvv;

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      width: 15.w,
    );
    var textStyle = const TextStyle(
      color: Colors.white,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "0000  0000  0000  0000",
          style: textStyle,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Text(
              "09 / 24",
              style: textStyle,
            ),
            sizedBox,
            Text(
              "John Doe",
              style: textStyle,
            ),
            sizedBox,
            Text(
              "345",
              style: textStyle,
            ),
          ],
        ),
      ],
    );
  }
}

class BankDetails extends StatelessWidget {
  const BankDetails({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "STACT BANK",
          style: TextStyle(
            color: color,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const CardImage(
          imageUrl: "assets/images/bank/master_card.png",
        ),
      ],
    );
  }
}

class ChipImage extends StatelessWidget {
  const ChipImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: const CardImage(
        imageUrl: "assets/images/bank/chip_clean.png",
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      height: 8.h,
      width: 10.w,
      fit: BoxFit.cover,
    );
  }
}

class CheckOutAppBar extends StatelessWidget {
  const CheckOutAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Row(
          children: [
            CustomBackButton(),
          ],
        ),
        Text(
          "Checkout",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
