import 'package:bank_ui/Screens/MenuButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 89, 156),
        title: const Text("Bank UI"),
        actions: [
          const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              child: const Icon(Icons.person),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Flexible(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: RadialGradient(colors: [
                  Colors.white,
                  Color.fromARGB(255, 69, 73, 152),
                ])),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  children: const [
                    MenuButton(
                        text: "Account", size: 35, icon: Icons.wallet_giftcard),
                    MenuButton(
                        text: "Transfer",
                        size: 35,
                        icon: Icons.transform_outlined),
                    MenuButton(
                        text: "Payments",
                        size: 35,
                        icon: Icons.monetization_on),
                    MenuButton(
                        text: "Deposite",
                        size: 35,
                        icon: Icons.wallet_giftcard),
                    MenuButton(
                        text: "Cash to ATM",
                        size: 35,
                        icon: Icons.wallet_giftcard),
                    MenuButton(
                        text: "Visual Card",
                        size: 35,
                        icon: Icons.wallet_giftcard),
                    MenuButton(
                        text: "QR payment",
                        size: 35,
                        icon: Icons.wallet_giftcard),
                    MenuButton(
                        text: "Contact Us",
                        size: 35,
                        icon: Icons.wallet_giftcard),
                    MenuButton(
                        text: "Bank Locator",
                        size: 35,
                        icon: Icons.wallet_giftcard),
                  ],
                ),
              )),
          //
          Flexible(
            flex: 1,
            child: Container(
              width: double.maxFinite,
              color: Colors.red,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Quick Transfer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Create your Temple here to make transfer quicker",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: double.maxFinite,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quick payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Paying your bills with temples is faster",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
