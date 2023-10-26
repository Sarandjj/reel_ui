import 'package:flutter/material.dart';

class SupriseButton extends StatelessWidget {
  const SupriseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 55,
      child: SizedBox(
        height: 45,
        width: width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 120,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/gift.png'),
                  label: const Text(
                    'Suprise Box',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(width: 2, color: Colors.yellow),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
