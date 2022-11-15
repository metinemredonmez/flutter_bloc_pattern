import 'dart:html';

import 'package:blocapp1/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {

  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Kullanımı"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // emit edilem bilgiyi yakalayalım
              BlocBuilder<AnasayfaCubit ,int>(
                  builder: (context , sonuc) {
                     return  Text(sonuc.toString(),style: const TextStyle(fontSize: 24),);
                  },
              ),

              TextField(controller: tfSayi1,decoration:const InputDecoration(hintText: "sayi 1"),),
              TextField(controller: tfSayi2,decoration:const InputDecoration(hintText: "sayi 2"),),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {
                    String alinansayi1 = tfSayi1.text;
                    String alinansayi2 = tfSayi2.text;
                    context.read<AnasayfaCubit>().toplamayap(alinansayi1, alinansayi2);

                    }, child:  const Text("toplama"),),
                    ElevatedButton(onPressed: () {
                      String alinansayi1 = tfSayi1.text;
                      String alinansayi2 = tfSayi2.text;
                      context.read<AnasayfaCubit>().carpmayap(alinansayi1, alinansayi2);

                    }, child:  const Text("çarpma"),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
