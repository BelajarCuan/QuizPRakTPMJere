import 'package:flutter/material.dart';
import 'pokemon_data.dart';
import 'detail_pokemon.dart';
import 'detail.dart';

class HalamanListPoke extends StatefulWidget {
  const HalamanListPoke({Key? key}) : super(key: key);

  @override
  State<HalamanListPoke> createState() => _HalamanListPokeState();
}

class _HalamanListPokeState extends State<HalamanListPoke> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P O K E D E X'),
      ),

      backgroundColor: Colors.black,
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: listPokemon.length,
          itemBuilder: (context, index) {
            final PokemonData pokemon = listPokemon[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PokemonDetailPage(pokemon: pokemon);
                  }));
                },
                child: Column(
                  children: [
                    Container(
                      width: 220,
                      height: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(40),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(pokemon.image),
                        ),
                      ),
                    ),
                    Text(pokemon.name)
                  ],
                ),
              ),
            );
          }),
    );
  }
}