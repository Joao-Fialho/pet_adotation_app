import 'package:flutter/material.dart';

class CardIcon extends StatefulWidget {
  final double? height;
  final double? width;
  final double? sizeIcon;
  const CardIcon({Key? key, this.width, this.height, this.sizeIcon})
      : super(key: key);

  @override
  State<CardIcon> createState() => _CardIconState();
}

bool active = false;

class _CardIconState extends State<CardIcon> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: widget.width,
        height: widget.height,
        // color: Colors.green,
        child: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: Icon(
              active == true
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              color: active == true ? Colors.red : Colors.grey[500],
              size: widget.sizeIcon,
            ),
            onPressed: () {
              setState(() {
                active = !active;
              });
            },
          ),
        ),
      ),
    );
  }
}
