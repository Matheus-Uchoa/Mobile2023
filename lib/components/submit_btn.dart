import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  final String btn_label;
  final Color btn_color;
  final VoidCallback onPressed;

  const SubmitBtn(
      {Key? key,
      required this.btn_label,
      required this.btn_color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(btn_label, style: TextStyle(fontSize: 20)),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(220, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: btn_color),
          ),
        ],
      ),
    );
  }
}
