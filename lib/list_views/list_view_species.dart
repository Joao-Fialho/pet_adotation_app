import 'package:flutter/material.dart';

import '../components/species_button.dart';
import 'list_view_species_model.dart';

class ListViewCardsSpecies extends StatelessWidget {
  ListViewCardsSpecies({Key? key}) : super(key: key);

  final List listSpecies = [
    ListViewSpeciesModel('Dogs', 'assets/icons/dog_icon.png'),
    ListViewSpeciesModel('Cats', 'assets/icons/cat_icon.png'),
    ListViewSpeciesModel('Birds', 'assets/icons/bird_icon.png'),
    ListViewSpeciesModel('Hourses', 'assets/icons/horse_icon.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final ListViewSpeciesModel item = listSpecies[index];
        return SpeciesButton(species: item.species, link: item.link);
      },
      separatorBuilder: (context, index) {
        return LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            width: size.width * 0.08,
          );
        });
      },
      itemCount: listSpecies.length,
    );
    //     (
    //   scrollDirection: Axis.horizontal,
    //   children: const [
    //     SpeciesButton(
    //       species: 'Dog',
    //       link: 'assets/icons/dog_icon.png',
    //     ),
    //     SpeciesButton(
    //       species: 'Cat',
    //       link: 'assets/icons/cat_icon.png',
    //     ),
    //     SpeciesButton(
    //       species: 'Birds',
    //       link: 'assets/icons/bird_icon.png',
    //     ),
    //     // ListView(
    //     //   children: [Container()],
    //     // ),
    //   ],
    // );
  }
}
