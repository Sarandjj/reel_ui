import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 110,
      right: 20,
      child: Column(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(
              'assets/video.png',
              fit: BoxFit.fill,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('One to One is booked!'),
                  duration:
                      Duration(seconds: 2), // Adjust the duration as needed
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                backgroundColor: Colors.yellow),
            child: const Text(
              'Book 1 to 1',
              style: TextStyle(color: Colors.black, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
