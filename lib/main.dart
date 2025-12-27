import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_commerce/Provider/add_to_cart_provider.dart';
import 'package:mobile_commerce/Provider/favorite_provider.dart';
import 'package:mobile_commerce/core/services/api_service.dart';
import 'package:mobile_commerce/features/auth/bloc/auth_bloc.dart';
import 'package:mobile_commerce/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),

      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      BlocProvider(create: (context) => UserBloc(apiService: APIService())),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
      home: MySplashScreen(),
    ),
  );
}
