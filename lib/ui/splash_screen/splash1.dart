import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  final int currentPage;
  final VoidCallback onNext;

  IntroScreen({required this.currentPage, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ⬆️ اللوجو فوق
            Column(
              children: [
                Image.asset(
                  "assets/images/img_left_corner.png", // هنا حط صورة المسجد أو اللوجو
                  height: 100,
                ),
              ],
            ),

            // ⬇️ الصورة الكبيرة في النص
            Image.asset(
              "assets/images/Group.png", // صورة الزخرفة أو النص العربي
              height: 250,
            ),

            // ⬇️ النص والمؤشرات والزرار
            Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "Welcome To Islmi App",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.amber[200],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),

                // المؤشرات (Dots)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: currentPage == index ? 20 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentPage == index ? Colors.amber : Colors.grey[700],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),

                SizedBox(height: 30),

                // زرار Next
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: onNext,
                    child: Text(
                      currentPage == 4 ? "Start" : "Next",
                      style: TextStyle(
                        color: Colors.amber[200],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
