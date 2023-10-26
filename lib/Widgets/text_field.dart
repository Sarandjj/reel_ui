import 'package:flutter/material.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              //padding: const EdgeInsets.all(10),
              height: 35,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.yellow,
                ),
                color: Colors.black38,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Say... Something',

                    suffixIcon: Icon(Icons.send_outlined),
                    suffixIconColor: Colors.yellow,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                    border: InputBorder.none,
                    // fillColor: Colors.yellow,
                    focusColor: Colors.yellow,
                    hoverColor: Colors.yellow,

                    filled:
                        true, // This ensures the background color is applied
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
              border: Border.all(color: Colors.yellow, width: 2),
            ),
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(
                Icons.video_camera_front_outlined,
                color: Colors.yellow,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
              border: Border.all(color: Colors.yellow, width: 2),
            ),
            child: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(
                Icons.calendar_month_rounded,
                color: Colors.yellow,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black38,
                border: Border.all(color: Colors.yellow, width: 2),
              ),
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.yellow,
                  size: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: const SizedBox(
              height: 35,
              width: 35,
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white54,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
