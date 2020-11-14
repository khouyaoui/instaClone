import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pActual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _etiquetas(),
            _historias(),
            Divider(
              color: Colors.red,
              height: 0,
              thickness: 0.6,
            ),
            _post()
          ],
        ),
      ),
      bottomNavigationBar: _downBar(),
    );
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
      margin: EdgeInsets.only(top: 5, left: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          _crearItemHistoria(
              Colors.black, "Your story", 'assets/img/str_1.jpg'),
          _crearItemHistoria(Colors.white70, "Javi_", 'assets/img/str_2.jpg'),
          _crearItemHistoria(Colors.green, "Jobi", 'assets/img/str_3.jpg'),
          _crearItemHistoria(Colors.pink, "Aleix_k", 'assets/img/str_4.jpg'),
          _crearItemHistoria(Colors.black, "Eiki", 'assets/img/str_5.jpg'),
          _crearItemHistoria(Colors.white70, "Sashi", 'assets/img/str_6.jpg'),
        ],
      ),
    );
  }

  Widget _crearItemHistoria(Color color, String user, String asset) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image(
              image: AssetImage(asset),
              width: 65,
              height: 65,
              fit: BoxFit.cover,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
                width: 3.0, color: Color.fromRGBO(245, 96, 64, 50.0)),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          user,
          style: user == ("Your story")
              ? TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold)
              : TextStyle(fontSize: 14, color: Colors.black87),
        ),
      ],
    );
  }

  Widget _post() {
    return Container(
      width: double.infinity,
      //height: double.infinity;
      height: MediaQuery.of(context).size.height,
      // listbuilder para la memoria, mas eficiente cuando haya muchos datos
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return _creatPost("assets/img/str_1.jpg", "assets/img/post_1.jpg");
        },
      ),
    );
  }

  Widget _creatPost(String asset, String imgPost) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, left: 5, bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image(
                      image: AssetImage(asset),
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Moha_",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Expanded(child: SizedBox()),
                IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
              ],
            ),
          ),
          FadeInImage(
            placeholder: AssetImage(imgPost),
            image: AssetImage(imgPost),
          ),
          Container(
            padding: EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(FontAwesome.heart_o), onPressed: () {}),
                    IconButton(
                        icon: Icon(FontAwesome.comment_o), onPressed: () {}),
                    IconButton(
                        icon: Icon(FontAwesome.send_o), onPressed: () {}),
                  ],
                ),
                IconButton(icon: Icon(FontAwesome.bookmark_o), onPressed: () {})
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Row(
              children: <Widget>[Text("Like by Mksd22, Aeoor, 10 others")],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Tintín ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text:
                              " es un personaje de historieta creado por el dibujante belga Hergé, protagonista de la serie Las aventuras de Tintín.",
                          style: TextStyle(color: Colors.black))
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 3),
                    child: Text(
                      "14 November",
                      style: TextStyle(color: Colors.black38),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _downBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      iconSize: 25,
      currentIndex: pActual,
      onTap: (pageID) {
        setState(() {
          pActual = pageID;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(AntDesign.home), label: ''),
        BottomNavigationBarItem(icon: Icon(AntDesign.search1), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(AntDesign.hearto), label: ''),
        BottomNavigationBarItem(icon: Icon(AntDesign.user), label: ''),
      ],
    );
  }
}
