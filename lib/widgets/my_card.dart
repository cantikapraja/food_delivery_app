import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: double.maxFinite,
        height: 155,
        decoration: BoxDecoration(
          color: Colors.grey[850],

          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Get",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(width: 7),
                      Text(
                        "40%",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      const SizedBox(width: 7),
                      Text(
                        "off when",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Text(
                    "your order 2 items! 🔥",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "Order now",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Image.asset("lib/assets/kusyiang.jpg", height: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
