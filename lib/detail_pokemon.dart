/*import 'package:flutter/material.dart';
import 'pokemon_data.dart';


class detail extends StatefulWidget {



  final PokemonData poke;
  const detail({Key? key, required this.poke}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}


class _detailState extends State<detail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.poke.name),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,)
          ,
          Container(
            height: 300,
            child: Image.network(widget.poke.image),
          ),
          SizedBox(height: 20,)
          ,
          Container(
            child: Table(
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),

                },

                // Allows to add a border decoration around your table
                children:  [
                  TableRow(children :[
                    Text('Judul'),

                    Text(widget.poke.name),
                  ]),
                  TableRow(children :[
                    Text('Penulis',),

                      Text(widget.poke.type),
                  ]),
                  TableRow(children :[
                    Text('Penulis'),

                    Text(widget.poke.weakness),
                  ]),
                  TableRow(children :[
                    Text('Weakness'),

                    Text(widget.poke.prevEvolution),
                  ]),
                  TableRow(children :[
                    Text('Previous Evolution'),

                    Text('${widget.poke.pages}'),
                  ]),
                  TableRow(children :[
                    Text('Next Evolution'),

                    Text('${widget.poke.year}'),
                  ]),
                  TableRow(children :[
                    Text('Status'),
                    if (widget.poke.isAvailable) Text('Tersedia',style: TextStyle(color: Colors.green),)
                    else Text("Tidak Tersedia" ,style: TextStyle(color: Colors.red),),
                  ]),
                ]
            ),
          )

        ],
      ),
    );
  }
}
*/