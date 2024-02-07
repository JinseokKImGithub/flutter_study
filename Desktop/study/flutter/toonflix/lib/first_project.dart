import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class FirstProject extends StatelessWidget {
  const FirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hey, Selena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 57,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '\$5 195 482',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  text: "Transfer",
                  bgColor: Colors.amber,
                  textColor: Colors.black,
                ),
                MyButton(
                  text: "Request",
                  bgColor: Color(0xFF1F2323),
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Wallets",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CurrencyCard(
              name: 'Euro',
              code: 'EUR',
              amount: '6 428',
              icon: Icons.euro_rounded,
              isInverted: false,
              offsetX: 0,
              offsetY: 0,
            ),
            const CurrencyCard(
              name: 'Bitcion',
              code: 'BTC',
              amount: '9 785',
              icon: Icons.currency_bitcoin,
              isInverted: true,
              offsetX: 0,
              offsetY: -20,
            ),
            const CurrencyCard(
              name: 'Dollar',
              code: 'USD',
              amount: '428',
              icon: Icons.attach_money_outlined,
              isInverted: false,
              offsetX: 0,
              offsetY: -40,
            ),
          ],
        ),
      ),
    );
  }
}
