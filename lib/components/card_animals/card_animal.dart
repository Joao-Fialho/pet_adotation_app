import 'package:flutter/material.dart';
import 'widgets/card_icon.dart';
import 'widgets/card_perfil.dart';
import 'widgets/card_texts.dart';

class CardAnimal extends StatelessWidget {
  final String name;
  final String race;
  final String sex;
  final String old;
  final String distance;
  final Color color;
  final String link;
  const CardAnimal(
      {Key? key,
      this.name = 'Nome',
      this.race = 'Raça',
      this.sex = 'Sexo',
      this.old = 'idade',
      this.distance = 'distancia',
      this.color = Colors.black,
      this.link = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.18,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(size.width * 0.05),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Center(
              child: SizedBox(
                height: constraints.maxHeight * 0.85,
                width: constraints.maxWidth * 0.93,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardPerfil(
                      height: constraints.maxWidth * 0.33,
                      width: constraints.maxWidth * 0.33,
                      color: color,
                      link: link,
                    ),
                    CardTexts(
                      widthA: constraints.maxWidth * 0.4,
                      // widthB: constraints.maxWidth * 0.45,
                      name: name,
                      race: race,
                      sex: sex,
                      old: old,
                      distance: distance,
                    ),
                    CardIcon(
                      width: constraints.maxWidth * 0.13,
                      height: constraints.maxHeight * 0.4,
                      sizeIcon: constraints.maxHeight * 0.24,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
        Container(
          height: size.height * 0.03,
        ),
      ],
    );
  }
}
