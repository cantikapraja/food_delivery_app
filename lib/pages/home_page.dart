import 'package:flutter/material.dart';
import 'package:my_app/widgets/my_grid_view.dart';
import 'package:my_app/widgets/my_list.dart';
import 'package:my_app/widgets/my_text_field.dart';

import '../widgets/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // APP BAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_rounded, size: 25),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 30),
                        Text(
                          "Turkiye",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.notifications_none_rounded, size: 30),
                  ],
                ),
                const SizedBox(height: 10),

                // CARD ORDER NOW
                MyCard(),
                const SizedBox(height: 25),

                //SEARCH BAR
                MyTextField(),
                const SizedBox(height: 25),

                // CATEGORIES LIST
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                MyList(),
                const SizedBox(height: 15),

                //CATEGORIES SECTION
                Expanded(child: MyGridView()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, size: 30),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
