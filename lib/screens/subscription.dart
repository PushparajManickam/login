import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              PlanCard(
                "BASICS",
                "\u20B9 129",
                "No delivery charge",
                "Express Delivery",
                "2 reward points for every \u20B9 100 Rs. spent",
                "20 days return policy",
                "Early access to festive offers",
              ),
              const SizedBox(
                height: 10,
              ),
              PlanCard(
                "BASICS",
                "\u20B9 129",
                "No delivery charge",
                "Express Delivery",
                "2 reward points for every \u20B9 100 Rs. spent",
                "20 days return policy",
                "Early access to festive offers",
              ),
              const SizedBox(
                height: 10,
              ),
              PlanCard(
                "BASICS",
                "\u20B9 129",
                "No delivery charge",
                "Express Delivery",
                "2 reward points for every \u20B9 100 Rs. spent",
                "20 days return policy",
                "Early access to festive offers",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlanCard extends StatelessWidget {
  String titleData,
      titleAmount,
      cartDetail1,
      cartDetail2,
      cartDetail3,
      cartDetail4,
      cartDetail5;
  PlanCard(
    this.titleData,
    this.titleAmount,
    this.cartDetail1,
    this.cartDetail2,
    this.cartDetail3,
    this.cartDetail4,
    this.cartDetail5,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  4,
                ),
              ),
            ),
            margin: const EdgeInsets.all(
              10,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "$titleData ($titleAmount)",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CardDetails(
                  cartDetail1,
                ),
                CardDetails(
                  cartDetail2,
                ),
                CardDetails(
                  cartDetail3,
                ),
                CardDetails(
                  cartDetail4,
                ),
                CardDetails(
                  cartDetail5,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const BuyNowButton(),
      ],
    );
  }
}

class CardDetails extends StatelessWidget {
  String? data;
  CardDetails(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      child: Card(
        color: Colors.blue.shade600,
        margin: const EdgeInsets.fromLTRB(14, 4, 14, 4),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              4,
            ),
          ),
        ),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  data!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
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

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.fromLTRB(14, 4, 14, 4),
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.all(
          Radius.circular(
            4,
          ),
        ),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Buy Now",
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
