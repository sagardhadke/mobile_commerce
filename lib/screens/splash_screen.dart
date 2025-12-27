import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_commerce/core/services/pref_service.dart';
import 'package:mobile_commerce/features/on_boarding/presentation/pages/login_page.dart';
import 'package:mobile_commerce/screens/Home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    navToHome();
    super.initState();
  }

  Future<void> navToHome() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (pref.getString(SharedPrefService.jwtToken) != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("My Ecommerce")));
  }
}
