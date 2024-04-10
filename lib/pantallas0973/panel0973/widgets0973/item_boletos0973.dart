import 'package:flutter/material.dart';

class Itemboletos extends StatelessWidget {
  const Itemboletos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/nkmserrano/img_FlutterFlow_IOS_6J/main/Act12_NavBar_FlutterFlow/laufey.jpeg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Laufey',
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}
