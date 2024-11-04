import 'package:flutter/material.dart';

class PageOneContent extends StatelessWidget {
  const PageOneContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icono1 transparent.png",
            width: 450,
            height: 450,
            fit: BoxFit.cover,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text(
                "Hola, soy Samuel",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF666569)
                ),
              ),
              Text(
                "Mobile Developer",
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Especializado en Flutter",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF666569)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
