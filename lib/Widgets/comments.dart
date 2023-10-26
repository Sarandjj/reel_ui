import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 100,
        child: SizedBox(
          height: 200,
          width: 250,
          // color: Colors.brown,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/stefan-stefancik-QXevDflbl8A-unsplash-min-compressed.jpg',
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Sarankumar ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                        Text(
                          'Sarankumar ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
