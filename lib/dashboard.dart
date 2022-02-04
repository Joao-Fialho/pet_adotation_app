import 'package:flutter/material.dart';

import 'list_views/list_view_species.dart';
import 'list_views/list_view_animals.dart';
import 'components/filter_button.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      height: size.height * 1,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: constraints.maxHeight * 0.1,
                width: constraints.maxWidth * 0.95,
                // color: Colors.amber,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const FilterButton(),
                      Container(
                        // color: Colors.red,
                        width: constraints.maxWidth * 0.75,
                        child: ListViewCardsSpecies(),
                      ),
                    ],
                  );
                }),
              ),
            ),
            Container(
              height: constraints.maxHeight * 0.06,
            ),
            SizedBox(
              height: constraints.maxHeight * 0.8,
              width: constraints.maxWidth * 0.9,
              child: ListViewAnimals(),
            ),
          ],
        );
      }),
    );
  }
}
