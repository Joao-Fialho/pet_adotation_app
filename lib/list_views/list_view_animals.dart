import 'package:flutter/material.dart';
import 'package:pet_adotation_app/components/card_animals/card_animal.dart';

class ListViewAnimals extends StatelessWidget {
  const ListViewAnimals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        CardAnimal(
          name: 'Sparky',
          race: 'Golden Retriver',
          sex: 'Female',
          old: '8 months old',
          distance: '2.5 Kms away',
          color: Colors.yellow.shade300,
          link: 'assets/image/golden.png',
        ),
        CardAnimal(
          name: 'Charlie',
          race: 'Boston Tirrier',
          sex: 'Male',
          old: '1.5 years old',
          distance: '2.6 Kms away',
          color: Colors.teal.shade200,
          link: 'assets/image/boston.png',
        ),
        CardAnimal(
          name: 'Max',
          race: 'Siberian Husky',
          sex: 'Male',
          old: '1 year old',
          distance: '2.9 Kms away',
          color: Colors.blue.shade200,
          link: 'assets/image/husky.png',
        ),
        CardAnimal(
          name: 'Daisy',
          race: 'Maltese',
          sex: 'Female',
          old: '7 months old',
          distance: '3.1s Kms away',
          color: Colors.deepOrange.shade200,
          link: 'assets/image/maltese.png',
        ),
        CardAnimal(
          name: 'Zoe',
          race: 'Jack Russell Terrier',
          sex: 'Female',
          old: '8 months old',
          distance: '2.5 Kms away',
          color: Colors.green.shade200,
          link: 'assets/image/russell.png',
        ),
        // ListView(
        //   children: [Container()],
        // ),
      ],
    );
  }
}
