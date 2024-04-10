//PanelPantalla0973
//
import 'package:flutter/material.dart';
import 'package:montiel_uii_act1_0973/pantallas0973/panel0973/widgets0973/item_boletos0973.dart';

class PanelPantalla0973 extends StatelessWidget {
  const PanelPantalla0973({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1E88E5),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/nkmserrano/practica1_6J_IOS/main/usuario1.png'),
              ))
        ],
        title: const Text('Montiel Boletos0973',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffd7eeff),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ]),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Qué quieres buscar',
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/nkmserrano/practica1_6J_IOS/main/palnorte.jpg'))),
          ),
          ListTile(
            title: const Text('Conciertos 2024'),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.calendar_month_rounded),
          ),
          Expanded(
              child: GridView.count(
            padding: const EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemboletos()],
          ))
        ],
      ),
    );
  }
}
