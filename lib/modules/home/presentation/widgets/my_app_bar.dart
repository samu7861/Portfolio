import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFF17263D),
            Color(0xFF119190),
            Color(0xFF0C1729),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/transparent_logo 1.png"),
            const SizedBox(),
            Switch(value: true, onChanged: (value) {}),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                  label: const Row(
                    children: [
                      Text('Home'),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Skills"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Experience"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("About me"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
