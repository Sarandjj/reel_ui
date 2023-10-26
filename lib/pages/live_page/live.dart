import 'package:flutter/material.dart';
import 'package:level_2/Widgets/comments.dart';
import 'package:level_2/Widgets/suprise_button.dart';
import 'package:level_2/Widgets/text_field.dart';

import '../../Widgets/book_button.dart';

class Live extends StatelessWidget {
  const Live({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'assets/stefan-stefancik-QXevDflbl8A-unsplash-min-compressed.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
                top: 250,
                left: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                  child: const Icon(
                    Icons.share_sharp,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 300,
                left: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                  child: const Icon(
                    Icons.auto_graph_outlined,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 350,
                left: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black38),
                  child: const Icon(
                    Icons.backpack_sharp,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 120,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/stefan-stefancik-QXevDflbl8A-unsplash-min-compressed.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Sarankumar ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        Text(
                          'Sarankumar ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 227, 26, 96)),
                      child: const Text('Live 10k'),
                    )
                  ],
                )),
            const SupriseButton(),
            const CommentTextField(),
            const BookButton(),
            const Comments()
          ],
        ),
      ),
    );
  }
}
