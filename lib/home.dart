import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: _appBar(),
        body: Column(
          children: <Widget>[_etiquetas(), _historias()],
        ));
  }

  Widget _appBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Container(
          color: Colors.black38,
          height: 0.70,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white70,
      title: Image.asset(
        "assets/img/instaLogo.png",
        scale: 6,
        alignment: Alignment.center,
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Feather.camera,
          color: Colors.black,
          size: 28,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.tv,
            color: Colors.black,
            size: 28,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.black,
              size: 28,
            ))
      ],
    );
  }

  Widget _etiquetas() {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Stories",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.arrow_right),
                Text(
                  "Watch All",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ]),
    );
  }

  Widget _historias() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          _crearItemHistoria(Colors.black, "Moha_"),
          _crearItemHistoria(Colors.white70, "Javi_c"),
          _crearItemHistoria(Colors.green, "Martina"),
          _crearItemHistoria(Colors.pink, "Aleix_k"),
          _crearItemHistoria(Colors.black, "Moha_"),
          _crearItemHistoria(Colors.white70, "Javi"),
          _crearItemHistoria(Colors.black, "Moha_"),
          _crearItemHistoria(Colors.white70, "Javi_t"),
        ],
      ),
    );
  }

  Widget _crearItemHistoria(Color color, String user) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(width: 3, color: Color(0xFF844AD)),
          ),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/str_1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          user,
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
      ],
    );
  }
}
