import 'package:blocapp1/anasayfa.dart';
import 'package:blocapp1/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // ne kadar cubit sınıfı var ise burada tanınlaybılrısın !
        BlocProvider(create: (context) => AnasayfaCubit(), // diğer kubitleriden bundan sonra ekleybilriiz!
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const  anasayfa(),
      ),
    );
  }
}

