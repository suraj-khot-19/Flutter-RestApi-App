import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title, subtitle, operation;
  final VoidCallback onTapFun;
  final Color opcolor;

  const MyButton(
      {required this.title,
      required this.subtitle,
      required this.operation,
      required this.opcolor,
      required this.onTapFun,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          onTapFun();
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Menlo',
                  fontWeight: FontWeight.w900,
                  color: opcolor,
                ),
              ),
              Text(
                subtitle,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
