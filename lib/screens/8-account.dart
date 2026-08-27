// screens/8-account.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/8_account_info.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/profale.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 20),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mostafa faiz',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),

                  const Text(
                    'mostafa.faiz2020@gmail.com',
                    style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // المسافة بين البيانات والـ Divider
        const SizedBox(height: 5),

        const Divider(),
        AccountInfo(icon: Icons.shopping_bag_outlined, text: 'Order'),
        const Divider(),
        AccountInfo(icon: Icons.contact_page_outlined, text: 'My Details'),
        const Divider(),
        AccountInfo(icon: Icons.location_on_outlined, text: 'Delivery Address'),
        const Divider(),
        AccountInfo(icon: Icons.credit_card_outlined, text: 'Payment Methods'),
        const Divider(),
        AccountInfo(
          icon: Icons.confirmation_number_outlined,
          text: 'Promo Cord',
        ),
        const Divider(),
        AccountInfo(
          icon: Icons.notifications_none_outlined,
          text: 'Notifecations ',
        ),
        const Divider(),
        AccountInfo(icon: Icons.help_outline, text: 'Help'),
        const Divider(),
        AccountInfo(icon: Icons.error_outline, text: 'About '),
        const Divider(),
        SizedBox(height: 53),
        Container(
          width: 364,
          height: 67,
          decoration: BoxDecoration(
            color: Color(0xffF2F3F2),
            borderRadius: BorderRadius.circular(19),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.logout_outlined, color: Color(0xff53B175)),
                SizedBox(width: 100),
                Text(
                  'Log Out',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xff53B175),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
