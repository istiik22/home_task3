import 'package:flutter/material.dart';
import '../data/global_data.dart';
import '../widgets/landing_search_bar.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.skateboarding, color: mainThemeColor, size: 80)
        )
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://images.pexels.com/photos/261394/pexels-photo-261394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                fit: BoxFit.cover
              )
            )
          ),
          Container(color: mainThemeColor.withOpacity(0.7)),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Скейт-парки',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )
              ),
              SizedBox(height: 60),
              Icon(Icons.skateboarding, color: Colors.white, size: 80),
              SizedBox(height: 10),
              Text('Выберите локацию, чтобы'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withOpacity(0.5))
              ),
              SizedBox(height: 5),
              Text('Найти скейт-парк', textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30, 
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 20),
              LandingSearchBar()
            ]
          ),
        ],
      )
    );  
  }
}