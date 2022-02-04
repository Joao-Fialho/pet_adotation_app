import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpeciesButton extends StatefulWidget {
  final String link;
  final String species;
  const SpeciesButton({
    Key? key,
    this.link = '',
    this.species = 'Especie',
  }) : super(key: key);

  @override
  State<SpeciesButton> createState() => _SpeciesButtonState();
}

class _SpeciesButtonState extends State<SpeciesButton> {
  bool isTap = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        setState(() {
          isTap = !isTap;
        });
      },
      child: Container(
          width: size.width * 0.30,
          decoration: BoxDecoration(
            color: isTap ? Colors.white : Colors.red,
            borderRadius: BorderRadius.circular(size.width * 0.05),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: constraints.maxWidth * 0.23,
                  width: constraints.maxWidth * 0.23,
                  child: Image.asset(
                    widget.link,
                    color: Colors.grey[600],
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 1,
                  width: constraints.maxWidth * 0.35,
                  child: Center(
                      child: FittedBox(
                    child: Text(
                      widget.species,
                      style: TextStyle(fontSize: constraints.maxWidth * 0.2),
                    ),
                  )),
                ),
              ],
            );
          })),
    );
  }
}
