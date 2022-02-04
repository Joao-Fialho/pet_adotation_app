import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1,
      width: size.width * 0.16,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size.height * 0.033),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/filter_icon5.png',
            height: constraints.maxHeight * 0.4,
            width: constraints.maxHeight * 0.4,
            color: Colors.grey[600],

            // size: constraints.maxHeight * 0.4,
          ),
        );
      }),
    );
  }
}
