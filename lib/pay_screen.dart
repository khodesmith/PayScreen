import 'package:crack_pay/bottom_navbar.dart';
import 'package:crack_pay/constants/colors.dart';
import 'package:crack_pay/widgets/icon_and_text.dart';
import 'package:crack_pay/widgets/my_button.dart';
import 'package:flutter/material.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'images/scholar.png',
              ),
            ),
            // SizedBox(width: 10),
            Text(
              'HELLO, BUIKE',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.headset_mic_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.flip),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 190,
              decoration: BoxDecoration(
                color: kCard,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //icon
                      const Icon(Icons.gpp_good_outlined),
                      //Text
                      const Text('Availabele Balance'),
                      //eye icon
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_outlined),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '₦',
                          style: TextStyle(fontSize: 20, color: kText),
                          children: [
                            TextSpan(
                              text: '40,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 40),
                            ),
                            TextSpan(text: '.32'),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(
                          buttonText: 'Transaction History >',
                          buttonColor: kBackgroundColor),
                      MyButton(buttonText: '+ Add Money', buttonColor: kButton),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 125,
                  height: 130,
                  decoration: BoxDecoration(
                    color: kCard,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const IconAndText(
                      iconImg: Icons.account_box_outlined, text: 'To Opay'),
                ),
                Container(
                  width: 125,
                  height: 130,
                  decoration: BoxDecoration(
                    color: kCard,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const IconAndText(
                      iconImg: Icons.account_balance, text: 'To Bank'),
                ),
                Container(
                  width: 125,
                  height: 130,
                  decoration: BoxDecoration(
                    color: kCard,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const IconAndText(
                      iconImg: Icons.u_turn_right_rounded, text: 'Withdraw'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: kCard, borderRadius: BorderRadius.circular(25)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconAndText(
                          iconImg: Icons.smartphone_outlined, text: 'Airtime'),
                      IconAndText(
                          iconImg: Icons.tap_and_play_outlined, text: 'Data'),
                      IconAndText(
                          iconImg: Icons.sports_baseball_outlined,
                          text: 'Betting'),
                      IconAndText(iconImg: Icons.tv_outlined, text: 'TV')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconAndText(
                          iconImg: Icons.savings_outlined, text: 'OWealth'),
                      IconAndText(
                          iconImg: Icons.lightbulb_outlined,
                          text: 'Electricity'),
                      IconAndText(
                        iconImg: Icons.volunteer_activism_outlined,
                        text: 'Play4Child',
                      ),
                      IconAndText(
                          iconImg: Icons.grid_view_outlined, text: 'More'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kCard,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.account_balance_outlined),
                  const SizedBox(width: 10),
                  const SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add Money',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Fund your Opay account with ₦1,000 or more',
                          style: TextStyle(color: kText),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      iconColor: MaterialStatePropertyAll(Colors.grey),
                      textStyle: MaterialStatePropertyAll(
                        TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.toll),
                    label: const Text(
                      '+50',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
